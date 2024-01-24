import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:get/route_manager.dart';
import 'package:skeleton/app/core/network.dart';
import 'package:skeleton/config/environtment.dart';
import 'package:skeleton/config/function_utils.dart';

import '../../../models/food_json_model.dart';

part 'detail_food_event.dart';
part 'detail_food_state.dart';

class DetailFoodBloc extends Bloc<DetailFoodEvent, DetailFoodState> {
  Food foodData = Food();
  final _networkUtil = NetworkUtil.internal();

  void getIngridients() {}

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
          // logKey('res DetailFoodGet', );
          logKey('video id', foodData.strYoutube!.split('v=').last);
        } on DioException catch (e) {
          emit(DetailFoodError());
          logKey('error DetailFoodGet ${e.response}', e.message);
        }
        emit(DetailFoodComplete());
      },
    );
  }

  @override
  Future<void> close() {
    // TODO: implement close
    logKey('detailfoodbloc closed');
    return super.close();
  }
}
