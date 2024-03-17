import 'package:assignment/core/app_colors.dart';
import 'package:assignment/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

class SwitchItem extends StatelessWidget {
  final String title;
  const SwitchItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomSwitch(),
        const SizedBox(
          width: 20,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w300,
            letterSpacing: 0.2,
            color: AppColors.textColor2,
          ),
        )
      ],
    );
  }
}
