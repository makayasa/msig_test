part of 'favorite_food_bloc.dart';

sealed class FavoriteFoodState extends Equatable {
  const FavoriteFoodState();

  @override
  List<Object> get props => [];
}

final class FavoriteFoodInitial extends FavoriteFoodState {}

final class FavoriteFoodGet extends FavoriteFoodState {}

final class FavoriteFootEmpty extends FavoriteFoodState {}
