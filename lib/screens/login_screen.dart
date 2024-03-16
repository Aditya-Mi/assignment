import 'dart:ui';

import 'package:assignment/screens/main_screen.dart';
import 'package:assignment/widgets/glass_morphed_container.dart';
import 'package:assignment/widgets/login_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/swift_cafe.png'),
            fit: BoxFit.cover),
      ),
      child: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(80, 114, 235, 0),
              Color.fromRGBO(207, 123, 75, 0.25),
            ],
          ),
        ),
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(right: 32, left: 32, top: 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(17),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(255, 255, 255, 0.23),
                        Color.fromRGBO(255, 255, 255, 0.12),
                        Color.fromRGBO(255, 255, 255, 0.11),
                      ],
                    ),
                    image: DecorationImage(
                      opacity: 0.1,
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/image.png',
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 57,
                      ),
                      Image.asset(
                        'assets/images/logo_assignment.png',
                        width: 90,
                        height: 70,
                      ),
                      const Text(
                        'Swift',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 64,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Raleway',
                        ),
                      ),
                      const Text(
                        'Café',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Raleway',
                        ),
                      ),
                      const DecoratedBox(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(255, 255, 255, 0.87),
                              blurRadius: 45,
                              spreadRadius: -4,
                            ),
                          ],
                        ),
                        child: Text(
                          '"Latte but never late"',
                          style: TextStyle(
                            color: Color.fromRGBO(171, 171, 171, 1),
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: 'User Name',
                          hintStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      LoginButton(
                        onPressed: () => Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => const MainScreen(),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: const Text(
                          'Signup',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      const Text(
                        'Privacy Policy',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
