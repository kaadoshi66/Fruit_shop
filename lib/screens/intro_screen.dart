import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruit_shop/screens/home_screen.dart';
import 'package:slide_to_act/slide_to_act.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "HAY MARKETS",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.1,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "First Online",
                style: TextStyle(
                  fontSize: 60,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Text(
                "Market",
                style: TextStyle(
                  fontSize: 60,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Our market always provide fresh items form the local farmers, let's support local with us!",
                style: TextStyle(
                  color: Colors.black54,
                  height: 1.4,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.40,
                width: MediaQuery.of(context).size.width,
                child: Image.asset("assets/bg.png"),
              ),
              const Spacer(),
              Column(
                children: [
                  //slider
                  SlideAction(
                    outerColor: Colors.red,
                    sliderButtonIcon: const Icon(
                      FontAwesomeIcons.arrowRight,
                      size: 20,
                      color: Colors.red,
                    ),
                    text: "SWIPE TO START",
                    textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                    onSubmit: () {
                      Timer(
                        const Duration(milliseconds: 500),
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "HOW TO SUPPORT ",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                          ),
                        ),
                        TextSpan(
                          text: "LOCAL FARMERS",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
