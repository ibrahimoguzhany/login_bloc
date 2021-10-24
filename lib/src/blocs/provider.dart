import 'package:flutter/material.dart';
import 'package:login_bloc/src/screens/login_screen.dart';
import 'bloc.dart';

// ignore: use_key_in_widget_constructors
class Provider extends InheritedWidget {
  final bloc = Bloc();

  Provider() : super(child: LoginScreen());

  bool updateShouldNotify(_) => true;

  static Bloc of(context) {
    return (context.inheritFromWidgetOfExactType(Provider) as Provider).bloc;
  }


}
