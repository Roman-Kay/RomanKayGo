import 'package:flutter/material.dart';
import 'package:romankaygo_testapp/utils/colors.dart';

class ChooseContainer extends StatefulWidget {
  final String text;
  final bool isChoose;
  final Function()? onTap;

  const ChooseContainer({
    super.key,
    required this.text,
    required this.isChoose,
    required this.onTap,
  });

  @override
  State<ChooseContainer> createState() => _ChooseContainerState();
}

class _ChooseContainerState extends State<ChooseContainer> {
  @override
  Widget build(BuildContext context) {
    final double widthScreen = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: widget.onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: (widthScreen - 64 - 14) / 3,
        // 32 - сумма падингов справо и слева, 14 - падинги между
        height: 40,
        decoration: BoxDecoration(
          color: widget.isChoose ? AppColors.green : AppColors.white,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              color: widget.isChoose ? AppColors.text_2 : AppColors.text,
              fontFamily: 'Roboto',
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
