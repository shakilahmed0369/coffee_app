import 'package:coffee_app/partials/theme_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(secondaryColor),
      // backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 500,
            width: double.infinity,
            color: Colors.red,
            child: Image.asset(
              'images/coffee_cup.png',
              fit: BoxFit.cover,
            ),
          ),
          const Text(
            "Coffee so good,\n your taste buds will love it.",
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Sora',
                fontSize: 34,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.34),
            textAlign: TextAlign.center,
          ),
          const Text(
            "The best grain, the finest roast,\n the powerful flavor.",
            style: TextStyle(
                color: Color(0xffA9A9A9),
                fontFamily: 'Sora',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.34),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  padding: const EdgeInsets.fromLTRB(0, 21, 0, 21),
                  backgroundColor: Color(primaryColor)),
              onPressed: () {},
              child: const Text(
                'Get Started',
                style: TextStyle(
                    fontFamily: 'Sora',
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
