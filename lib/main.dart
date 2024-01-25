import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' as bloc;
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:skeleton/app/bloc/database_bloc/database_bloc_bloc.dart';
import 'package:skeleton/app/bloc/favorite_food_bloc/favorite_food_bloc.dart';

import 'app/bloc/list_food_bloc/list_foods_bloc.dart';
import 'app/routes/app_pages.dart';
import 'config/color_constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDateFormatting();

  runApp(
    bloc.MultiBlocProvider(
      providers: [
        bloc.BlocProvider(
          create: (context) => ListFoodsBloc(),
        ),
        bloc.BlocProvider(
          create: (context) => DatabaseBloc(),
        ),
        bloc.BlocProvider(
          create: (context) => FavoriteFoodBloc(),
        ),
      ],
      child: GetMaterialApp(
        title: "MSIG Test",
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        theme: kPrimaryTheme,
        defaultTransition: Transition.cupertino,
      ),
    ),
  );
}
