import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'favorite_food_event.dart';
part 'favorite_food_state.dart';

class FavoriteFoodBloc extends Bloc<FavoriteFoodEvent, FavoriteFoodState> {
  FavoriteFoodBloc() : super(FavoriteFoodInitial()) {
    on<FavoriteFoodEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
