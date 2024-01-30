// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import '../utils/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomBarItem {
  final String svgName;
  final String title;

  CustomBottomBarItem({
    required this.svgName,
    required this.title,
  });
}

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({
    Key? key,
    required this.items,
    this.currentIndex = 0,
    this.onTap,
  }) : super(key: key);

  final List<CustomBottomBarItem> items;

  final int currentIndex;

  final Function(int)? onTap;

  final ShapeBorder itemShape = const StadiumBorder();

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.background,
      child: SafeArea(
        minimum: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 16,
          bottom: 12,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (final item in items)
              TweenAnimationBuilder(
                tween: Tween(
                  end: items.indexOf(item) == currentIndex ? 1.0 : 0.0,
                ),
                curve: Curves.easeOutQuint,
                duration: const Duration(milliseconds: 500),
                builder: (context, t, _) {
                  const selectedColor = AppColors.text_2;
                  const unselectedColor = AppColors.text;
                  const indicatorColor = AppColors.green;
                  return Material(
                    color: Color.lerp(
                      indicatorColor.withOpacity(0),
                      indicatorColor,
                      t,
                    ),
                    shape: itemShape,
                    child: InkWell(
                      onTap: () => onTap?.call(items.indexOf(item)),
                      customBorder: itemShape,
                      focusColor: indicatorColor.withOpacity(0.1),
                      highlightColor: indicatorColor.withOpacity(0.1),
                      splashColor: indicatorColor.withOpacity(0.1),
                      hoverColor: indicatorColor.withOpacity(0.1),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16 * t,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 40,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    item.svgName,
                                    color: Color.lerp(
                                      unselectedColor,
                                      selectedColor,
                                      t,
                                    ),
                                  ),
                                  Text(
                                    item.title,
                                    style: TextStyle(
                                      height: 1,
                                      color: Color.lerp(
                                        unselectedColor,
                                        unselectedColor.withOpacity(0.0),
                                        t,
                                      ),
                                      fontFamily: 'Roboto',
                                      fontSize: 13 * (t - 1) * -1,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 4 * t),
                            ClipRect(
                              clipBehavior: Clip.antiAlias,
                              child: SizedBox(
                                height: 20,
                                child: Align(
                                  widthFactor: t,
                                  child: Text(
                                    item.title,
                                    style: TextStyle(
                                      height: 1,
                                      color: Color.lerp(
                                        selectedColor.withOpacity(0.0),
                                        selectedColor,
                                        t,
                                      ),
                                      fontFamily: 'Roboto',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}
