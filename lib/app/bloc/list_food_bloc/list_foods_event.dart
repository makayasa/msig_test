part of 'list_foods_bloc.dart';

sealed class ListFoodsEvent extends Equatable {
  const ListFoodsEvent();

  @override
  List<Object> get props => [];
}

class ListFoodsGet extends ListFoodsEvent {}

class ListFoodsPagination extends ListFoodsEvent {}
