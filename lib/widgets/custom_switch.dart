import 'package:assignment/core/app_colors.dart';
import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({super.key});

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch>
    with SingleTickerProviderStateMixin {
  late Animation _circleAnimation;
  late AnimationController _animationController;
  bool value = false;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 60));
    _circleAnimation = AlignmentTween(
            begin: value ? Alignment.centerRight : Alignment.centerLeft,
            end: value ? Alignment.centerLeft : Alignment.centerRight)
        .animate(CurvedAnimation(
            parent: _animationController, curve: Curves.linear));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            if (_animationController.isCompleted) {
              _animationController.reverse();
            } else {
              _animationController.forward();
            }
            setState(() {
              value = !value;
            });
          },
          child: Container(
            width: 25,
            height: 14,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.switchBorderColor,
              ),
              borderRadius: BorderRadius.circular(7),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: value
                    ? [
                        AppColors.switchBgActiveColor1,
                        AppColors.switchBgActiveColor2
                      ]
                    : [
                        AppColors.switchBgInactiveColor1,
                        AppColors.switchBgInactiveColor2
                      ],
              ),
            ),
            child: Row(
              mainAxisAlignment:
                  value ? MainAxisAlignment.end : MainAxisAlignment.start,
              children: [
                Align(
                  alignment: _circleAnimation.value,
                  child: Padding(
                    padding: const EdgeInsets.all(1),
                    child: Container(
                      alignment: Alignment.center,
                      width: 10,
                      height: 10,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Container(
                        width: 7.5,
                        height: 7.5,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: value
                                ? [
                                    AppColors.switchCircleActiveColor1,
                                    AppColors.switchCircleActiveColor2
                                  ]
                                : [
                                    AppColors.switchCircleInactiveColor1,
                                    AppColors.switchCircleInactiveColor2
                                  ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
