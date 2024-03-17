import 'dart:ui';
import 'package:assignment/screens/main_screen.dart';
import 'package:assignment/widgets/gradient_border.dart';
import 'package:assignment/widgets/login_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
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
          body: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: height * 0.0639),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(17),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                  child: Container(
                    constraints: BoxConstraints(
                        maxWidth: width < 500 ? width * 0.8511 : 500),
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(255, 255, 255, 0.23),
                          Color.fromRGBO(255, 255, 255, 0.12),
                          Color.fromRGBO(255, 255, 255, 0.11),
                        ],
                      ),
                      border: const GradientBoxBorder(
                        width: 1,
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(255, 255, 255, 0.5),
                            Color.fromRGBO(255, 255, 255, 0.14),
                            Color.fromRGBO(255, 255, 255, 0.38),
                          ],
                        ),
                      ),
                      image: const DecorationImage(
                        opacity: 0.1,
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/image.png',
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: height * 0.0521,
                        ),
                        Image.asset(
                          'assets/images/logo_assignment.png',
                          width: 90,
                          height: 70,
                        ),
                        Text(
                          'Swift',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: width > 500 ? height * 0.0585 : 40,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Raleway',
                          ),
                        ),
                        Text(
                          'Café',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: width > 500 ? height * 0.0365 : 40,
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
                        SizedBox(
                          height: height * 0.0639,
                        ),
                        LoginButton(
                          onPressed: () =>
                              Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => const MainScreen(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.0365,
                        ),
                        SizedBox(
                          width: 245,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(33),
                              ),
                              side: const BorderSide(
                                width: 1,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Signup',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
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
      ),
    );
  }
}
