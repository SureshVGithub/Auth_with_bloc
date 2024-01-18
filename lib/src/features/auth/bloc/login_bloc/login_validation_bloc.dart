import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../utils/constants/regex_constants.dart';

part 'login_validation_event.dart';
part 'login_validation_state.dart';

class LoginValidationBloc
    extends Bloc<LoginValidationEvent, LoginValidationState> {
  LoginValidationBloc() : super(LoginValidationInitial()) {
    on<LoginValidationPressed>(_loginValidatePressed);
  }
  void _loginValidatePressed(
      LoginValidationPressed event, Emitter<LoginValidationState> emit) {
    emit(LoginValidateLoading());
    String email = event.email;
    String password = event.password;
    BuildContext context = event.context;
    final regexEmail = RegExp(RegexValidation.email);
    if (email.isEmpty) {
      emit(LoginValidationFailure(error: 'Enter email'));
    } else if (!regexEmail.hasMatch(email)) {
      emit(LoginValidationFailure(error: 'Invalid email'));
    } else if (password.isEmpty) {
      emit(LoginValidationFailure(error: 'Enter password'));
    } else if (password.length < 6) {
      emit(LoginValidationFailure(error: 'Password must have 6 characters'));
    } else {
      emit(LoginValidationSuccess());
    }
  }
}
