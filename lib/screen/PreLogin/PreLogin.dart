import 'package:app/config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widget/signInWith/signInWith.dart';

class PreLogin extends StatefulWidget {
  const PreLogin({super.key});

  @override
  State<PreLogin> createState() => _PreLoginState();
}

class _PreLoginState extends State<PreLogin> {
  void onServiseClick(String serviseName) {
    print(serviseName);
  }

  @override
  Widget build(BuildContext context) {
    final Size media = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        color: const Color(0xFFEBEBEB),
        width: media.width,
        height: media.height,
        child: Column(
          children: [
            SizedBox(
              width: media.width,
              height: media.height * 0.50,
              child: Container(
                margin: EdgeInsets.only(top: (media.height * 0.45) * 0.20),
                child: Image.asset(Config.MainLogoPath),
              ),
            ),
            SizedBox(
              width: media.width * 0.65,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/register');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF292F36),
                ),
                child: const Text(
                  'LANCEZ-VOUS',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: media.width,
              height: 30,
            ),
            Column(
              children: [
                SignInWith(
                  const Color(0xFFFF6B6B),
                  FontAwesomeIcons.google,
                  "Google",
                  media,
                  onServiseClick,
                ), //google sigIn
                const SizedBox(
                  height: 15,
                ),
                SignInWith(
                  const Color(0xFF039BE5),
                  FontAwesomeIcons.facebookF,
                  "Facebook",
                  media,
                  onServiseClick,
                ), //facebook sigIn
                const SizedBox(
                  height: 15,
                ),
                SignInWith(
                  const Color(0xFF000000),
                  FontAwesomeIcons.apple,
                  "Apple",
                  media,
                  onServiseClick,
                ),
              ],
            ),
            SizedBox(
              height: media.height * 0.07,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Vous avez déja un compte ? ",
                  style: TextStyle(fontSize: 12),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/login');
                  },
                  child: const Text(
                    "Connectez-vous",
                    style: TextStyle(
                      color: Color(0xFF4ECDC4),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
