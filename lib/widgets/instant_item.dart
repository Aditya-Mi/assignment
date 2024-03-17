import 'package:assignment/core/app_colors.dart';
import 'package:flutter/material.dart';

class InstantItem extends StatelessWidget {
  final String title;
  final String imageString;
  const InstantItem(
      {super.key, required this.title, required this.imageString});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 163,
      width: width > 500 ? 390 : width * 0.9069,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(180, 180, 180, 0.33),
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            offset: const Offset(
              0,
              4,
            ),
            blurRadius: 4,
            color: Colors.black.withOpacity(0.25),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.2,
                      color: AppColors.textColor2,
                    ),
                  ),
                  Row(
                    children: [
                      const Text(
                        '4.9',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                        ),
                      ),
                      const Icon(
                        Icons.star_rounded,
                        color: AppColors.starColor,
                      ),
                      const Text(
                        '(458)',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Image.asset(
                        'assets/images/veg.png',
                        width: 14,
                        height: 14,
                        fit: BoxFit.scaleDown,
                      ),
                    ],
                  ),
                  const Text(
                    'Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.2,
                        color: AppColors.textColor4),
                    maxLines: 5,
                    overflow: TextOverflow.fade,
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 119,
            padding: const EdgeInsets.only(top: 20, bottom: 10, right: 14),
            child: Stack(
              children: [
                Container(
                  height: 122,
                  width: 119,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(2, 2),
                        blurRadius: 4,
                        spreadRadius: -1,
                        color: Colors.black.withOpacity(0.2),
                      ),
                    ],
                  ),
                  child: Image.asset(
                    imageString,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 52,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(102, 163, 92, 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Text(
                      'ADD',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.2,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
