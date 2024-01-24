import 'package:flutter_bloc/flutter_bloc.dart' as bloc;
import 'package:get/get.dart';
import 'package:skeleton/app/bloc/detail_food_bloc/detail_food_bloc.dart';
import 'package:skeleton/config/constant.dart';

import '../modules/detail_food/bindings/detail_food_binding.dart';
import '../modules/detail_food/views/detail_food_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/list_food/bindings/list_food_binding.dart';
import '../modules/list_food/views/list_food_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LIST_FOOD;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LIST_FOOD,
      page: () => const ListFoodView(),
      binding: ListFoodBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_FOOD,
      page: () => bloc.BlocProvider(
        create: (context) => DetailFoodBloc(),
        child: const DetailFoodView(),
      ),
      transitionDuration: kDefaultDuration,
      curve: kDefaultCurve,
      binding: DetailFoodBinding(),
    ),
  ];
}
