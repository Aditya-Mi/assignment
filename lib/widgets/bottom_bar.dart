import 'package:assignment/core/app_colors.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({
    super.key,
  });

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  bool isHighPriority = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
        color: AppColors.bottomNavigationBarColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.25),
              offset: const Offset(0, 4),
              blurRadius: 4),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Checkbox(
              value: isHighPriority,
              onChanged: (bool? value) {
                setState(() {
                  isHighPriority = value!;
                });
              }),
          const SizedBox(
            width: 6,
          ),
          const Text(
            'High Priority',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300,
              letterSpacing: 0.2,
              color: AppColors.textColor2,
            ),
          ),
          SizedBox.square(
            dimension: 15,
            child: Image.asset(
              'assets/images/error.png',
              width: 15,
              height: 15,
              fit: BoxFit.scaleDown,
            ),
          ),
          const Spacer(),
          SizedBox(
            width: 146,
            height: 44,
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/image.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.5),
                    gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color.fromRGBO(25, 129, 51, 0.77),
                        Color.fromRGBO(55, 173, 84, 0.88),
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        offset: const Offset(0, 4),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.2,
                      color: AppColors.textColor2,
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
