import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:romankaygo_testapp/utils/colors.dart';

// ignore: must_be_immutable
class CustomDropDown extends StatelessWidget {
  final double width;
  final double height;
  final String initialSelection;
  final List listOfItemsDropDown;
  void Function(dynamic)? onSelected;
  CustomDropDown({
    super.key,
    required this.width,
    required this.height,
    required this.initialSelection,
    required this.listOfItemsDropDown,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.white,
      ),
      child: DropdownMenu(
        selectedTrailingIcon: Transform.flip(
          flipY: true,
          child: SvgPicture.asset('assets/svg/arrow_down.svg'),
        ),
        trailingIcon: SvgPicture.asset('assets/svg/arrow_down.svg'),
        width: width,
        initialSelection: initialSelection,
        textStyle: const TextStyle(
          color: AppColors.text_2,
          fontFamily: 'Roboto',
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
        inputDecorationTheme: InputDecorationTheme(
          isDense: true,
          constraints: BoxConstraints.tight(
            Size.fromHeight(height),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
        onSelected: onSelected,
        dropdownMenuEntries: listOfItemsDropDown.map((value) {
          return DropdownMenuEntry(
            value: value,
            label: value,
          );
        }).toList(),
      ),
    );
  }
}
