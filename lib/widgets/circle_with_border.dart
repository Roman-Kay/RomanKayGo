import 'package:flutter/material.dart';
import 'package:romankaygo_testapp/utils/colors.dart';

class CircleWithBorder extends StatelessWidget {
  final String text;
  const CircleWithBorder({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          width: 1,
          color: AppColors.grey,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: AppColors.text_2,
            fontFamily: 'Roboto',
            fontSize: 11,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
