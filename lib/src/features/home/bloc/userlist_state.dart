part of 'userlist_bloc.dart';

@immutable
class UserlistState {}

class UserlistInitial extends UserlistState {}

class UserlistLoading extends UserlistState {}

class UserlistSuccess extends UserlistState {
  final UsersList usersList;

  UserlistSuccess(this.usersList);
}

class UserlistFailure extends UserlistState {
  final String error;

  UserlistFailure(this.error);
}
