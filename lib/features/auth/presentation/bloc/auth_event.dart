part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

class AuthSignUp extends AuthEvent {
  final String email;
  final String name;
  final String password;
  AuthSignUp({
    required this.email,
    required this.name,
    required this.password,
  });
}

class AuthLogin extends AuthEvent {
  final String email;
  final String password;
  AuthLogin({
    required this.email,
    required this.password,
  });
}
