import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'database_bloc_event.dart';
part 'database_bloc_state.dart';

class DatabaseBlocBloc extends Bloc<DatabaseBlocEvent, DatabaseBlocState> {
  DatabaseBlocBloc() : super(DatabaseBlocInitial()) {
    on<DatabaseBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
