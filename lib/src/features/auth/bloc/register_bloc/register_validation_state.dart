part of 'register_validation_bloc.dart';

@immutable
class RegisterValidationState {}

class RegisterValidationInitial extends RegisterValidationState {}

class RegisterValidateLoading extends RegisterValidationState {}

class RegisterValidationSuccess extends RegisterValidationState {}

class RegisterValidationFailure extends RegisterValidationState {
  String error;
  RegisterValidationFailure({
    required this.error,
  });
}
