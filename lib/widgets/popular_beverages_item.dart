import 'dart:ui';

import 'package:assignment/core/app_colors.dart';
import 'package:assignment/widgets/gradient_border.dart';
import 'package:flutter/material.dart';

class PopularBeveragesItem extends StatelessWidget {
  final String imageString;
  const PopularBeveragesItem({super.key, required this.imageString});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10,
          sigmaY: 10,
        ),
        child: Container(
          height: height * 0.2441,
          width: 213,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(255, 255, 255, 0.36),
                  Color.fromRGBO(255, 255, 255, 0.18),
                  Color.fromRGBO(255, 255, 255, 0.3),
                ],
              ),
              border: const GradientBoxBorder(
                  gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(255, 255, 255, 1),
                  Color.fromRGBO(255, 255, 255, 0.33),
                  Color.fromRGBO(255, 255, 255, 0.29),
                  Color.fromRGBO(255, 255, 255, 0.35),
                ],
              ))),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 27),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.0200,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        imageString,
                        width: 131,
                        height: height * 0.1110,
                      ),
                    ),
                    const Text(
                      'Hot Cappuccino',
                      style: TextStyle(
                        color: AppColors.textColor2,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        letterSpacing: 0.2,
                      ),
                    ),
                    const Text(
                      'Espresso, Steamed Milk',
                      style: TextStyle(
                        color: AppColors.textColor3,
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        letterSpacing: 0.2,
                      ),
                    ),
                    const Row(
                      children: [
                        Text(
                          '4.9',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                          ),
                        ),
                        Icon(
                          Icons.star_rounded,
                          color: AppColors.starColor,
                        ),
                        Text(
                          '(458)',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 15,
                bottom: 19,
                child: Container(
                  width: 30,
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(102, 163, 92, 1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Icon(
                    Icons.add_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
