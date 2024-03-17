import 'dart:ui';

import 'package:assignment/core/app_colors.dart';
import 'package:assignment/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;
  List<String> iconString = [
    'assets/icons/home.svg',
    'assets/icons/profile.svg',
    'assets/icons/wallet.svg',
    'assets/icons/bag.svg',
    'assets/icons/chat.svg',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: Container(
          constraints: const BoxConstraints(maxWidth: 400),
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
              child: Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.bottomNavigationBarColor,
                ),
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 20,
                    );
                  },
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 12, bottom: 13),
                  scrollDirection: Axis.horizontal,
                  itemCount: iconString.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22.5),
                          color: index == selectedIndex
                              ? AppColors.bottomNavigationSelectedItemColor
                              : Colors.transparent,
                          border: index == selectedIndex
                              ? Border.all(
                                  color:
                                      AppColors.bottomNavigationItemBorderColor,
                                  width: 1,
                                )
                              : null,
                          boxShadow: index == selectedIndex
                              ? const [
                                  BoxShadow(
                                    color: AppColors
                                        .bottomNavigationItemShadowColor,
                                    blurRadius: 2,
                                    spreadRadius: -2,
                                    offset: Offset(0, 2),
                                  ),
                                ]
                              : null,
                        ),
                        child: SvgPicture.asset(
                          iconString[index],
                          width: 18,
                          height: 18,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: const Center(child: HomeScreen()),
      ),
    );
  }
}
