import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../utils/constants/regex_constants.dart';

part 'register_validation_event.dart';
part 'register_validation_state.dart';

class RegisterValidationBloc
    extends Bloc<RegisterValidationEvent, RegisterValidationState> {
  RegisterValidationBloc() : super(RegisterValidationInitial()) {
    on<RegisterValidationPressed>(_registerValidatePressed);
  }
  void _registerValidatePressed(
      RegisterValidationPressed event, Emitter<RegisterValidationState> emit) {
    emit(RegisterValidateLoading());
    String name = event.name;
    String email = event.email;
    String password = event.password;
    BuildContext context = event.context;
    final regexEmail = RegExp(RegexValidation.email);
    if (name.isEmpty) {
      emit(RegisterValidationFailure(error: 'Enter your name'));
    } else if (name.length < 5) {
      emit(RegisterValidationFailure(error: 'Name should have 5 characters'));
    } else if (email.isEmpty) {
      emit(RegisterValidationFailure(error: 'Enter your email'));
    } else if (!regexEmail.hasMatch(email)) {
      emit(RegisterValidationFailure(error: 'Invalid email'));
    } else if (password.isEmpty) {
      emit(RegisterValidationFailure(error: 'Enter password'));
    } else if (password.length < 6) {
      emit(RegisterValidationFailure(error: 'Password must have 6 characters'));
    } else {
      emit(RegisterValidationSuccess());
    }
  }
}
