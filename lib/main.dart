import 'package:app/screen/home/Home.dart';
import 'package:app/screen/load/Load.dart';
import 'package:app/screen/PreLogin/PreLogin.dart';
import 'package:app/screen/login/Login.dart';
import 'package:app/screen/register/Register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/load",
      routes: {
        "/": (context) => const Home(),
        "/load": (context) => const Load(),
        "/PreLogin": (context) => const PreLogin(),
        "/login": (context) => const Login(),
        "/register": (context) => const Register(),
      },
    );
  }
}
