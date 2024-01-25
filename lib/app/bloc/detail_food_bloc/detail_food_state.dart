part of 'detail_food_bloc.dart';

sealed class DetailFoodState extends Equatable {
  const DetailFoodState();

  @override
  List<Object> get props => [];
}

final class DetailFoodInitial extends DetailFoodState {}

final class DetailFoodLoading extends DetailFoodState {}

final class DetailFoodComplete extends DetailFoodState {}

final class DetailFoodError extends DetailFoodState {}

final class DetailFoodScroll extends DetailFoodState {}

final class DetailFoodScrollDone extends DetailFoodState {}
