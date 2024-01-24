part of 'detail_food_bloc.dart';

sealed class DetailFoodEvent extends Equatable {
  const DetailFoodEvent();

  @override
  List<Object> get props => [];
}

class DetailFoodGet extends DetailFoodEvent {}

class DetailFoodChangeAppbarOpacity extends DetailFoodEvent {
  const DetailFoodChangeAppbarOpacity({required this.offset});
  final double offset;
}
