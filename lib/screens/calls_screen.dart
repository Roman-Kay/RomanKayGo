import 'package:flutter/material.dart';
import 'package:romankaygo_testapp/utils/colors.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Calls',
        style: TextStyle(
          color: AppColors.text_2,
          fontFamily: 'Roboto',
          fontSize: 30,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
