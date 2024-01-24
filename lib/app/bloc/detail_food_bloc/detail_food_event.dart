part of 'detail_food_bloc.dart';

sealed class DetailFoodEvent extends Equatable {
  const DetailFoodEvent();

  @override
  List<Object> get props => [];
}

class DetailFoodGet extends DetailFoodEvent {}

class DetailFoodAddToFavorite extends DetailFoodEvent {}
