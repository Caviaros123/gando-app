import 'package:app/config.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final Size media = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(Config.BackgroundColor),
        // shadowColor: ,²
        shadowColor: Color(0xFF),
        toolbarHeight: media.height * 0.20,
        leading: Image.asset(
          "assets/images/arrow_back.icon.png",
          height: 10,
          width: 10,
          fit: BoxFit.none,
        ),
      ),
      body: Container(
        width: media.width,
        height: media.height * 0.80,
        color: Color(Config.BackgroundColor),
      ),
    );
  }
}
