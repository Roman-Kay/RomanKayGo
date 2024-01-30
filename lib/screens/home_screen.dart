import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:romankaygo_testapp/utils/colors.dart';
import 'package:romankaygo_testapp/utils/text_styles.dart';
import 'package:romankaygo_testapp/widgets/choose_container.dart';
import 'package:romankaygo_testapp/widgets/circle_with_border.dart';
import 'package:romankaygo_testapp/widgets/custom_drop_down.dart';
import 'package:romankaygo_testapp/widgets/decorated_container.dart';

class ItemOfCountry {
  final String assetsImage;
  final String name;
  List<ItemOfNumber> listOfNumbers;

  ItemOfCountry({
    required this.assetsImage,
    required this.name,
    required this.listOfNumbers,
  });
}

class ItemOfNumber {
  final String number;
  final String region;

  ItemOfNumber({
    required this.number,
    required this.region,
  });
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int choosenIndexType = 1;

  final List<String> listOfItemsDropDown = const [
    'Landline or Mobile',
    'Landline',
    'Mobile',
  ];
  String? dropdownValue;

  final List<ItemOfCountry> listOfItemsCounry = [
    ItemOfCountry(
      assetsImage: 'assets/images/USA.png',
      name: 'United States',
      listOfNumbers: [
        ItemOfNumber(
          number: '+1 (201) 123 45 67',
          region: 'New Jersey',
        ),
        ItemOfNumber(
          number: '+1 (201) 123 45 67',
          region: 'Washington',
        ),
        ItemOfNumber(
          number: '+1 (201) 123 45 67',
          region: 'New Jersey',
        ),
      ],
    ),
    ItemOfCountry(
      assetsImage: 'assets/images/USA.png',
      name: 'United States',
      listOfNumbers: [
        ItemOfNumber(
          number: '+1 (201) 123 45 67',
          region: 'New Jersey',
        ),
        ItemOfNumber(
          number: '+1 (201) 123 45 67',
          region: 'Washington',
        ),
        ItemOfNumber(
          number: '+1 (201) 123 45 67',
          region: 'New Jersey',
        ),
      ],
    ),
    ItemOfCountry(
      assetsImage: 'assets/images/USA.png',
      name: 'United States',
      listOfNumbers: [
        ItemOfNumber(
          number: '+1 (201) 123 45 67',
          region: 'New Jersey',
        ),
        ItemOfNumber(
          number: '+1 (201) 123 45 67',
          region: 'Washington',
        ),
        ItemOfNumber(
          number: '+1 (201) 123 45 67',
          region: 'New Jersey',
        ),
        ItemOfNumber(
          number: '+1 (201) 123 45 67',
          region: 'Washington',
        ),
        ItemOfNumber(
          number: '+1 (201) 123 45 67',
          region: 'New Jersey',
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final double widthScreen = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            color: AppColors.white,
            height: 64,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  SvgPicture.asset('assets/svg/menu.svg'),
                  const SizedBox(width: 8),
                  Text(
                    '+12021234567',
                    style: AppTextStyle.medium.copyWith(fontSize: 16),
                  ),
                  const Spacer(),
                  SvgPicture.asset('assets/svg/chart.svg'),
                  const SizedBox(width: 8),
                  SvgPicture.asset('assets/svg/message.svg'),
                  const SizedBox(width: 8),
                  SvgPicture.asset('assets/svg/notifications.svg'),
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(height: 22),
                DecoratedContainer(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 17),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ChooseContainer(
                              text: 'SMS',
                              isChoose: choosenIndexType == 0,
                              onTap: () => setState(
                                () => choosenIndexType = 0,
                              ),
                            ),
                            ChooseContainer(
                              text: 'MMS',
                              isChoose: choosenIndexType == 1,
                              onTap: () => setState(
                                () => choosenIndexType = 1,
                              ),
                            ),
                            ChooseContainer(
                              text: 'Voice',
                              isChoose: choosenIndexType == 2,
                              onTap: () => setState(
                                () => choosenIndexType = 2,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        CustomDropDown(
                          width: widthScreen - 64,
                          // общий отступ по краям,
                          height: 50,
                          initialSelection: listOfItemsDropDown.first,
                          listOfItemsDropDown: listOfItemsDropDown,
                          onSelected: (value) => setState(
                            () => dropdownValue = value!,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            SvgPicture.asset('assets/svg/check.svg'),
                            const SizedBox(width: 8),
                            const Text(
                              'Show number without verification',
                              style: AppTextStyle.regular,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 14),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: listOfItemsCounry.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final ItemOfCountry itemOfCountry =
                        listOfItemsCounry[index];
                    return Column(
                      children: [
                        SizedBox(height: index == 0 ? 0 : 25),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 12,
                              backgroundImage: AssetImage(
                                itemOfCountry.assetsImage,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              itemOfCountry.name,
                              style: AppTextStyle.medium,
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        DecoratedContainer(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: itemOfCountry.listOfNumbers.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                final ItemOfNumber itemOfNumber =
                                    itemOfCountry.listOfNumbers[index];
                                return Padding(
                                  padding: EdgeInsets.only(
                                    top: index == 0 ? 0 : 24,
                                  ),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: AppColors.white,
                                        radius: 20,
                                        child: SvgPicture.asset(
                                          'assets/svg/phone.svg',
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            itemOfNumber.number,
                                            style: AppTextStyle.medium,
                                          ),
                                          Text(
                                            itemOfNumber.region,
                                            style: const TextStyle(
                                              color: AppColors.text,
                                              fontFamily: 'Roboto',
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Spacer(),
                                      const CircleWithBorder(text: 'S'),
                                      const SizedBox(width: 8),
                                      const CircleWithBorder(text: 'V'),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
