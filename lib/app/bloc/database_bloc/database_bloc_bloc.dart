import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../config/function_utils.dart';
import '../../core/database/app_db.dart';

part 'database_bloc_event.dart';
part 'database_bloc_state.dart';

class DatabaseBloc extends Bloc<DatabaseBlocEvent, DatabaseBlocState> {
  final db = AppDb();

  void testGet() async {
    final res = await db.select(db.foodEntity).get();
    logKey('res db', res);
  }
  

  DatabaseBloc() : super(DatabaseBlocInitial()) {
    on<DatabaseBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
