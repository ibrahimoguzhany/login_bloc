import 'package:flutter/material.dart';
import "../blocs/bloc.dart";

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            emailField(),
            passwordField(),
            const SizedBox(
              height: 25,
            ),
            submitButton(),
          ],
        ));
  }

  Widget emailField() {
    return StreamBuilder<String>(
        stream: bloc.email,
        builder: (context, snapshot) {
          return TextField(
            onChanged: bloc.changeEmail,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                hintText: "you@example.com",
                labelText: "Email Address",
                errorText:
                    snapshot.hasError ? snapshot.error.toString() : null),
          );
        });
  }

  Widget passwordField() {
    return StreamBuilder<String>(
        stream: bloc.password,
        builder: (context, snapshot) {
          return TextField(
            onChanged: bloc.changePassword,
            decoration: InputDecoration(
                hintText: "Password",
                labelText: "Password",
                errorText:
                    snapshot.hasError ? snapshot.error.toString() : null),
          );
        });
  }

  Widget submitButton() {
    // ignore: deprecated_member_use
    return RaisedButton(
      child: const Text("Login"),
      color: Colors.blue,
      onPressed: () {},
    );
  }
}
