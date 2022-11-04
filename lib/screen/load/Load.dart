import 'dart:ui';

import 'package:app/screen/PreLogin/PreLogin.dart';
import 'package:flutter/material.dart';
import '../../config.dart';
import 'dart:async';

typedef HandleInitialRouter = void Function();

class Load extends StatefulWidget {
  const Load({super.key});

  @override
  State<Load> createState() => _LoadState();
}

class _LoadState extends State<Load> {
  double brandingLogoPosition = 0.30;
  @override
  void initState() {
    //like fetching login data in serveur or check token validite

    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context)
          .pushNamedAndRemoveUntil('/PreLogin', (route) => false);
    });
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        brandingLogoPosition = 0.50;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size media = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: const Color(0xFFEBEBEB),
        width: media.width,
        height: media.height,
        alignment: Alignment.center,
        child: Stack(
          children: [
            AnimatedContainer(
              curve: Curves.bounceInOut,
              duration: Duration(milliseconds: 500),
              alignment: Alignment(0, brandingLogoPosition),
              width: media.width,
              height: media.height,
              child: Container(
                width: 298,
                height: 297,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/branding-icon.png"),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: media.width,
              height: media.height,
              child: Container(
                width: 298,
                height: 297,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/logo-splash.png"),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
