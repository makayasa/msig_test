import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:skeleton/app/core/network.dart';
import 'package:skeleton/config/environtment.dart';
import 'package:skeleton/config/function_utils.dart';
import 'package:skeleton/models/food_json_model.dart';

part 'list_foods_event.dart';
part 'list_foods_state.dart';

class ListFoodsBloc extends Bloc<ListFoodsEvent, ListFoodsState> {
  final _foodsController = StreamController<List<Food>>();
  Stream<List<Food>> get foodsStream => _foodsController.stream;
  final networkUtil = NetworkUtil.internal();
  final List<Food> listFoods = [];
  int indexPage = 1;

  ListFoodsBloc() : super(ListFoodsInitial()) {
    on<ListFoodsEvent>((event, emit) {});
    on<ListFoodsGet>((event, emit) async {
      emit(ListFoodsLoading());
      try {
        //? karena result dari search a hanya 4 data saja jadi tidak cukup untuk extend pagination
        //? Jadi untuk data initialnya get 2x dari api untuk value a dan b
        Response res = await networkUtil.get(
          '$baseUrl/search.php?f=${String.fromCharCode(indexPage + 96)}',
        );
        indexPage++;
        for (var data in res.data['meals']) {
          final Food food = Food.fromJson(data);
          listFoods.add(food);
        }
        try {
          Response res = await networkUtil.get(
            '$baseUrl/search.php?f=${String.fromCharCode(indexPage + 96)}',
          );
          for (var data in res.data['meals']) {
            final Food food = Food.fromJson(data);
            listFoods.add(food);
          }
          indexPage++;
        } on DioException catch (e) {
          return;
        }
        _foodsController.add(listFoods);
        emit(ListFoodsComplete());
      } on DioException catch (e) {
        logKey('error getFoods ${e.response}', e.message);
      }
      emit(ListFoodsComplete());
    });

    on<ListFoodsPagination>(
      (event, emit) async {
        if (indexPage > 26) {
          return;
        }
        emit(ListFoodsPaginationLoading());
        logKey('indexPage Pagination', indexPage);
        try {
          Response res = await networkUtil.get(
            '$baseUrl/search.php?f=${String.fromCharCode(indexPage + 96)}',
          );
          indexPage++;
          if (isEmpty(res.data['meals'])) {
            emit(ListFoodsComplete());
            logKey('masuk kosong');
            return;
          }
          for (var data in res.data['meals']) {
            final Food food = Food.fromJson(data);
            listFoods.add(food);
          }
        } on DioException catch (e) {
          logKey('error ListFoodsPagination ${e.response}', e.message);
        }
        emit(ListFoodsComplete());
      },
    );

    @override
    Future<void> close() {
      _foodsController.close();
      return super.close();
    }
  }
}
