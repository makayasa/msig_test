import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:skeleton/app/bloc/database_bloc/database_bloc_bloc.dart';
import 'package:skeleton/app/core/database/app_db.dart';
import 'package:skeleton/config/function_utils.dart';
import 'package:skeleton/models/food_json_model.dart';

part 'favorite_food_event.dart';
part 'favorite_food_state.dart';

class FavoriteFoodBloc extends Bloc<FavoriteFoodEvent, FavoriteFoodState> {
  List<Food> favoriteFoods = <Food>[];
  FavoriteFoodBloc() : super(FavoriteFoodInitial()) {
    on<FavoriteFoodEvent>((event, emit) {});

    on<FavoriteFoodGetFavorite>(
      (event, emit) async {
        emit(FavoriteFoodLoading());
        final res = await event.dbBloc.db.getFavoriteFoods();
        final temp = <Food>[];
        for (var e in res) {
          Food food = Food.fromJson(e.toJson());
          temp.add(food);
        }
        favoriteFoods.clear();
        favoriteFoods.addAll(temp);
        if (favoriteFoods.isEmpty) {
          emit(FavoriteFootEmpty());
          return;
        }
        emit(FavoriteFoodComplete());
      },
    );

    on<FavoriteFoodsAddFavorite>(
      (event, emit) async {
        emit(FavoriteFoodLoading());
        try {
          final foodEntity = FoodEntityData.fromJson(event.foodData.toJson());
          final temp = foodEntity.toCompanion(true);
          await event.dbBloc.db.insertFavoriteFood(temp);
          add(FavoriteFoodGetFavorite(dbBloc: event.dbBloc));
        } catch (e) {
          logKey('error FavoriteFoodsAddFavorite', e);
        }
      },
    );

    on<FavoriteFoodRemove>(
      (event, emit) async {
        emit(FavoriteFoodLoading());
        await event.dbBloc.db.deleteFavoriteFood(event.mealId);
        favoriteFoods.removeWhere((element) => element.idMeal == event.mealId);
        if (favoriteFoods.isEmpty) {
          emit(FavoriteFootEmpty());
        } else {
          emit(FavoriteFoodComplete());
        }
        // add(FavoriteFoodGetFavorite(dbBloc: event.dbBloc));
      },
    );
  }
}
