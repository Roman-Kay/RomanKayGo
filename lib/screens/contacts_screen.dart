import 'package:flutter/material.dart';
import 'package:romankaygo_testapp/utils/text_styles.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Contacts',
        style: AppTextStyle.biggest,
      ),
    );
  }
}
