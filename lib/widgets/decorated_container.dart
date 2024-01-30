import 'package:flutter/material.dart';
import 'package:romankaygo_testapp/utils/colors.dart';

class DecoratedContainer extends StatelessWidget {
  final Widget child;
  const DecoratedContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: AppColors.background,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: child,
        ),
      ),
    );
  }
}
