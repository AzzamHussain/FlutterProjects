import 'package:flutter/material.dart';
import 'package:loginapp2/login.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'login',
    routes: {'login': (context) => Mylogin()},
  ));
}
