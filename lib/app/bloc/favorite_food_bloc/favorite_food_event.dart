part of 'favorite_food_bloc.dart';

sealed class FavoriteFoodEvent extends Equatable {
  const FavoriteFoodEvent();

  @override
  List<Object> get props => [];
}

class FavoriteFoodsAddFavorite extends FavoriteFoodEvent {}

class FavoriteFoodGetFavorite extends FavoriteFoodEvent {}
