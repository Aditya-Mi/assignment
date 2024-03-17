import 'package:assignment/core/app_colors.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final VoidCallback onPressed;
  const LoginButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 245,
        alignment: Alignment.center,
        padding: const EdgeInsets.only(
          top: 5,
          bottom: 10,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(33),
            gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                AppColors.loginButtonColor1,
                AppColors.loginButtonColor2,
              ],
            ),
            boxShadow: const [
              BoxShadow(
                offset: Offset(2, 2),
                blurRadius: 15,
                spreadRadius: -2,
                color: Color.fromRGBO(0, 0, 0, 0.65),
              ),
            ]),
        child: const Text(
          'Login',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
