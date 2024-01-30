import 'package:flutter/material.dart';
import 'package:romankaygo_testapp/screens/calls_screen.dart';
import 'package:romankaygo_testapp/screens/contacts_screen.dart';
import 'package:romankaygo_testapp/screens/home_screen.dart';
import 'package:romankaygo_testapp/screens/messages_screen.dart';
import 'package:romankaygo_testapp/widgets/bottom_bar_widget.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int currentIndex = 0;

  final List<Widget> screens = [
    const HomeScreen(),
    const CallsScreen(),
    const MessagesScreen(),
    const ContactsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: CustomBottomBar(
        currentIndex: currentIndex,
        onTap: (i) => setState(() => currentIndex = i),
        items: [
          CustomBottomBarItem(
            svgName: 'assets/svg/home.svg',
            title: 'Home',
          ),
          CustomBottomBarItem(
            svgName: 'assets/svg/phone.svg',
            title: 'Calls',
          ),
          CustomBottomBarItem(
            svgName: 'assets/svg/chat_2.svg',
            title: 'Messages',
          ),
          CustomBottomBarItem(
            svgName: 'assets/svg/user.svg',
            title: 'Contacts',
          ),
        ],
      ),
    );
  }
}
