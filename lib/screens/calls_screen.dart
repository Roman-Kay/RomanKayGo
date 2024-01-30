import 'package:flutter/material.dart';
import 'package:romankaygo_testapp/utils/text_styles.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Calls',
        style: AppTextStyle.biggest,
      ),
    );
  }
}
