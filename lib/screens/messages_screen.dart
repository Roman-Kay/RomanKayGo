import 'package:flutter/material.dart';
import 'package:romankaygo_testapp/utils/text_styles.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Messages',
        style: AppTextStyle.biggest,
      ),
    );
  }
}
