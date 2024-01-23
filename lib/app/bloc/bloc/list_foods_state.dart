part of 'list_foods_bloc.dart';

sealed class ListFoodsState extends Equatable {
  const ListFoodsState();

  @override
  List<Object> get props => [];
}

final class ListFoodsInitial extends ListFoodsState {}

final class ListFoodsLoading extends ListFoodsState {}

final class ListFoodsComplete extends ListFoodsState {}

final class ListFoodsError extends ListFoodsState {}

final class ListFoodsPaginationLoading extends ListFoodsState {}
