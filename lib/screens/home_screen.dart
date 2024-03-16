import 'package:assignment/core/app_colors.dart';
import 'package:assignment/core/constants.dart';
import 'package:assignment/widgets/glass_morphed_container.dart';
import 'package:assignment/widgets/header_container.dart';
import 'package:assignment/widgets/popular_beverages_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const List<String> images = [
    'assets/images/cup.png',
    'assets/images/coffee2.png',
    'assets/images/black_coffee.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeaderContainer(),
        Container(
          color: const Color.fromRGBO(49, 49, 49, 0.45),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 18),
                child: Text(
                  'Most Popular Beverages',
                  style: TextStyle(
                    color: AppColors.textColor1,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    letterSpacing: 0.2,
                  ),
                ),
              ),
              SizedBox(
                height: 266,
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 15);
                  },
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return PopularBeveragesItem(
                      imageString: images[0],
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 31,
              )
            ],
          ),
        ),
      ],
    );
  }
}
