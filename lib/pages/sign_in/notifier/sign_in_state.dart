import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInState {
  String email;
  String password;

  SignInState({this.email = "", this.password = ""});

  SignInState copyWith({String? email, String? password}) {
    return SignInState(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}

void main() {
  SignInState state = SignInState();
  state.email = "khathach";
  SignInState myState = SignInState(email: "khathach", password: "123456");
  myState.password = "123";
}
