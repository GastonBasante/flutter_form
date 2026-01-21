part of 'register_cubit.dart';

enum FormStatus { invalid, valid, validating, posting }

class RegisterFormState extends Equatable {
  final Username username;
  final Password password;
  final Email email;
  final bool isValid;
  final FormStatus formStatus;
  const RegisterFormState({
    this.email = const Email.pure(),
    this.username = const Username.pure(),
    this.password = const Password.pure(),
    this.formStatus = FormStatus.invalid,
    this.isValid =false
  });

  RegisterFormState copyWith({
    Username? username,
    Password? password,
    Email? email,
    FormStatus? formStatus,
    bool? isValid,
  }) => RegisterFormState(
    username: username ?? this.username,
    password: password ?? this.password,
    email: email ?? this.email,
    formStatus: formStatus ?? this.formStatus,
    isValid: isValid ?? this.isValid,
  );

  @override
  List<Object> get props => [username,isValid, password, email, formStatus];
}
