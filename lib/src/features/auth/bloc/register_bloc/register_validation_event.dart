part of 'register_validation_bloc.dart';

@immutable
class RegisterValidationEvent {}

class RegisterValidationPressed extends RegisterValidationEvent {
  String name;
  String email;
  String password;
  BuildContext context;
  RegisterValidationPressed({
    required this.name,
    required this.email,
    required this.password,
    required this.context,
  });
}
