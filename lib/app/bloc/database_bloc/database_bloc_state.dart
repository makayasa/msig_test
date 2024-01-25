part of 'database_bloc_bloc.dart';

sealed class DatabaseBlocState extends Equatable {
  const DatabaseBlocState();
  
  @override
  List<Object> get props => [];
}

final class DatabaseBlocInitial extends DatabaseBlocState {}
