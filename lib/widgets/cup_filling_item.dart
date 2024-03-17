import 'package:flutter/material.dart';

class CupFillingItem extends StatefulWidget {
  final String title;
  const CupFillingItem({super.key, required this.title});

  @override
  State<CupFillingItem> createState() => _CupFillingItemState();
}

class _CupFillingItemState extends State<CupFillingItem> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        alignment: Alignment.center,
        width: 51,
        height: 27,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: isSelected
              ? const Color.fromRGBO(55, 173, 84, 1)
              : const Color.fromRGBO(217, 217, 217, 1),
        ),
        child: Text(
          widget.title,
          style: TextStyle(
            color: isSelected
                ? const Color.fromRGBO(217, 217, 217, 1)
                : Colors.black,
            fontWeight: FontWeight.w300,
            fontSize: 12,
            letterSpacing: 0.2,
          ),
        ),
      ),
    );
  }
}
