import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import './login.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Title of first introduction page",
          body: "Welcome to the app! This is a description of how it works.",
          image: Center(
            child: Container(
              width: 250,
              height: 250,
              child: Lottie.asset('assets/lotties/login.json',
                  fit: BoxFit.contain),
            ),
          ),
        ),
        PageViewModel(
          title: "Title of second introduction page",
          body: "Welcome to the app! This is a description of how it works.",
          image: Center(
            child: Container(
              width: 250,
              height: 250,
              child: Lottie.asset('assets/lotties/animation.json',
                  fit: BoxFit.contain),
            ),
          ),
        )
      ],
      showNextButton: true,
      next: Text("Next >>"),
      done: const Text("Login"),
      onDone: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => LoginPage(),
            ));
      },
    );
  }
}
