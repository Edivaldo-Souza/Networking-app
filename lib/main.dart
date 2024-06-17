import 'package:flutter/material.dart';
import 'package:untitled1/CreateAccount/CreateAccountWidget.dart';
import 'package:untitled1/home/home_widget.dart';
import 'package:untitled1/home/tela_dois.dart';
import 'package:untitled1/login/login_widget.dart';

void main() => runApp(MaterialApp(
  home: Home()
));

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Tela Incial",
        home: Login(),
      routes: {
        "/home": (context) => Login(),
        "/signup": (context) => CreateAccount()
      }
    );
  }
}
