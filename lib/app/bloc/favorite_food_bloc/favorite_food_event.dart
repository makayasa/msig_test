part of 'favorite_food_bloc.dart';

sealed class FavoriteFoodEvent extends Equatable {
  const FavoriteFoodEvent();

  @override
  List<Object> get props => [];
}

class FavoriteFoodGetFavorite extends FavoriteFoodEvent {
  const FavoriteFoodGetFavorite({required this.dbBloc});
  final DatabaseBloc dbBloc;
}

class FavoriteFoodsAddFavorite extends FavoriteFoodEvent {
  const FavoriteFoodsAddFavorite({required this.foodData, required this.dbBloc});
  // final FoodEntityCompanion foodData;
  final Food foodData;
  final DatabaseBloc dbBloc;
}

class FavoriteFoodRemove extends FavoriteFoodEvent {
  const FavoriteFoodRemove({required this.mealId, required this.dbBloc});
  final String mealId;
  final DatabaseBloc dbBloc;
}
