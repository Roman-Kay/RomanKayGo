import 'package:flutter/material.dart';
import 'package:romankaygo_testapp/utils/colors.dart';
import 'package:romankaygo_testapp/utils/text_styles.dart';

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
          style: AppTextStyle.medium.copyWith(fontSize: 11),
        ),
      ),
    );
  }
}
