import 'package:auth_with_bloc/src/features/home/data/models/userlist_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/data_repository/data_repository.dart';

part 'userlist_event.dart';
part 'userlist_state.dart';

class UserlistBloc extends Bloc<UserlistEvent, UserlistState> {
  final DataRepositoryHome dataRepositoryHome;

  UserlistBloc(this.dataRepositoryHome) : super(UserlistInitial()) {
    on<UserlistEvent>(_userListEvent);
  }
  _userListEvent(UserlistEvent event, Emitter<UserlistState> emit) async {
    emit(UserlistLoading());
    try {
      final userlist = await dataRepositoryHome.getUserlist();
      print('userlist ${userlist.toJson()}');
      emit(UserlistSuccess(userlist));
    } catch (e) {
      emit(UserlistFailure(e.toString()));
    }
  }
}
