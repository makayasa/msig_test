import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' as bloc;
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'app/bloc/list_food_bloc/list_foods_bloc.dart';
import 'app/routes/app_pages.dart';
import 'config/color_constants.dart';

void main() {
  initializeDateFormatting();

  runApp(
    bloc.MultiBlocProvider(
      providers: [
        bloc.BlocProvider(
          create: (context) => ListFoodsBloc(),
        ),
        // bloc.BlocProvider(
        //   create: (context) => DetailFoodBloc(),
        // ),
      ],
      child: GetMaterialApp(
        title: "Application",
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        theme: kPrimaryTheme,
        defaultTransition: Transition.cupertino,
      ),
    ),
  );
}
