import 'dart:ui';

import 'package:assignment/core/app_colors.dart';
import 'package:assignment/widgets/bottom_bar.dart';
import 'package:assignment/widgets/cup_filling_item.dart';
import 'package:assignment/widgets/switch_item.dart';
import 'package:flutter/material.dart';

class ItemDetailsScreen extends StatefulWidget {
  final String imageString;
  const ItemDetailsScreen({super.key, required this.imageString});

  @override
  State<ItemDetailsScreen> createState() => _ItemDetailsScreenState();
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
  bool isHighPriority = false;
  String _selectedQuantity = '1';
  final _items = ['1', '2', '3', '4', '5'];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/swift_cafe.png'),
            fit: BoxFit.cover),
      ),
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            opacity: 0.1,
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/images/image.png',
            ),
          ),
        ),
        child: Scaffold(
          body: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  width: double.infinity,
                  height: height * 0.4076,
                  child: Stack(
                    children: [
                      Container(
                        height: height * 0.4076,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/coffee.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: height * 0.4076,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.black.withOpacity(0.67),
                              Colors.white.withOpacity(0.0),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      width: double.infinity,
                      height: height * 0.6398,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            color: Color.fromRGBO(41, 141, 141, 0.78),
                          ),
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromRGBO(48, 48, 52, 0.6),
                            Color.fromRGBO(124, 124, 124, 0.59),
                            Color.fromRGBO(39, 39, 39, 0.58),
                          ],
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  filterTitle('Lattè'),
                                  const SizedBox(height: 6),
                                  Row(
                                    children: [
                                      const Text(
                                        '4.9',
                                        style: TextStyle(
                                          color: AppColors.textColor4,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12,
                                        ),
                                      ),
                                      const SizedBox(width: 12),
                                      const Icon(
                                        Icons.star_rounded,
                                        color: AppColors.starColor,
                                        size: 11,
                                      ),
                                      const SizedBox(width: 2),
                                      const Text(
                                        '(458)',
                                        style: TextStyle(
                                          color: AppColors.textColor4,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12,
                                        ),
                                      ),
                                      const SizedBox(width: 15),
                                      Image.asset(
                                        'assets/images/veg.png',
                                        width: 14,
                                        height: 14,
                                        fit: BoxFit.scaleDown,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                height: 27,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(217, 217, 217, 1),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Center(
                                        child: Text(
                                          _selectedQuantity,
                                          style: const TextStyle(
                                            color: Color.fromRGBO(
                                                155, 155, 155, 1),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment.center,
                                      child: VerticalDivider(
                                        color: Color.fromRGBO(155, 155, 155, 1),
                                        width: 1,
                                      ),
                                    ),
                                    DropdownButton(
                                      items: _items.map((String item) {
                                        return DropdownMenuItem(
                                          value: item,
                                          child: Text(item),
                                        );
                                      }).toList(),
                                      icon: const Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: Color.fromRGBO(155, 155, 155, 1),
                                      ),
                                      underline: Container(),
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          _selectedQuantity = newValue!;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            'Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.2,
                              color: AppColors.textColor4,
                            ),
                          ),
                          const SizedBox(height: 12),
                          filterTitle('Choice of Cup Filling'),
                          const SizedBox(
                            height: 12,
                          ),
                          const Row(
                            children: [
                              CupFillingItem(title: 'Full'),
                              SizedBox(
                                width: 10,
                              ),
                              CupFillingItem(title: '1/2 Full'),
                              SizedBox(
                                width: 10,
                              ),
                              CupFillingItem(title: '3/4 Full'),
                              SizedBox(
                                width: 10,
                              ),
                              CupFillingItem(title: '1/4 Full'),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          filterTitle('Choice of Milk'),
                          const Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SwitchItem(title: 'Skim Milk'),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  SwitchItem(title: 'Almond Milk'),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  SwitchItem(title: 'Soy Milk'),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  SwitchItem(title: 'Lactose Free Milk'),
                                ],
                              ),
                              Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SwitchItem(title: 'Full Cream Milk'),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  SwitchItem(title: 'Full Cream Milk'),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  SwitchItem(title: 'Oat Milk'),
                                ],
                              ),
                            ],
                          ),
                          filterTitle('Choice of Sugar'),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SwitchItem(title: 'Sugar X1'),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  SwitchItem(title: '½ Sugar'),
                                ],
                              ),
                              Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SwitchItem(title: 'Sugar X2'),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  SwitchItem(title: 'No Sugar'),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          const BottomBar(),
                        ],
                      ),
                    ),
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

Widget filterTitle(String title) {
  return Text(
    title,
    style: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.2,
      color: AppColors.textColor2,
    ),
  );
}
