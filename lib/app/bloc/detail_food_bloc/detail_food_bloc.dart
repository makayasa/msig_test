import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:skeleton/app/core/network_utils.dart';
import 'package:skeleton/config/environtment.dart';
import 'package:skeleton/config/function_utils.dart';

import '../../../models/food_json_model.dart';

part 'detail_food_event.dart';
part 'detail_food_state.dart';

class DetailFoodBloc extends Bloc<DetailFoodEvent, DetailFoodState> {
  Food foodData = Food();
  final _networkUtil = NetworkUtil.internal();
  final scrollController = ScrollController();

  double opacity = 0.0;
  double iconOpacity = 1.0;

  void getIngridients() {}

  void appBarOpacityChange() {
    opacity = 1;
  }

  DetailFoodBloc() : super(DetailFoodInitial()) {
    on<DetailFoodEvent>((event, emit) {});
    on<DetailFoodGet>(
      (event, emit) async {
        foodData = Food();
        emit(DetailFoodLoading());
        final id = Get.arguments['id'];
        try {
          Response res = await _networkUtil.get(
            '$baseUrl/lookup.php?i=$id',
          );
          foodData = Food.fromJson(res.data['meals'].first);
        } on DioException catch (e) {
          emit(DetailFoodError());
          logKey('error DetailFoodGet ${e.response}', e.message);
        }
        emit(DetailFoodComplete());
      },
    );
    on<DetailFoodChangeAppbarOpacity>(
      (event, emit) {
        emit(DetailFoodScroll());
        // logKey('event.offset', event.offset);
        logKey('event.offset', event.offset);
        if (event.offset >= 250 && event.offset <= 350) {
          opacity = (event.offset / 350);
          iconOpacity = 1 - (event.offset / 350);
          emit(DetailFoodScrollDone());
          return;
        }
        if (event.offset <= 250) {
          opacity = 0;
          iconOpacity = 1;
          emit(DetailFoodScrollDone());
          return;
        }
        emit(DetailFoodScrollDone());
        return;
        if (event.offset >= 100 + 250) {}
        // logKey('eventt', event.offset);
      },
    );
  }

  @override
  Future<void> close() {
    // TODO: implement close
    logKey('detailfoodbloc closed');
    scrollController.dispose();
    return super.close();
  }
}
