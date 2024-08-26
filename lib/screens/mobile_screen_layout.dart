// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:whatsappclone/pages/CommunityPage.dart';
import 'package:whatsappclone/pages/ContactPage.dart';
import 'package:whatsappclone/pages/HomePage.dart';
import 'package:whatsappclone/pages/StoryPage.dart';
class MobileScreenLayout extends StatefulWidget {
  // final HomePage _homePage = HomePage();
  // final StoryPage _storyPage = StoryPage();
  // final CommunityPage _communityPage = CommunityPage();
  // final ContactPage _contactPage = ContactPage();
  MobileScreenLayout({super.key});

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout> {
  int selectedIndex = 3;

  List<Widget> pages = [
    HomePage(), StoryPage(), CommunityPage(), ContactPage(),
  ];

  void indexSelector(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.message_outlined, color: Colors.white), label: 'chats'),
          BottomNavigationBarItem(icon: Icon(Icons.update_rounded, color: Colors.white), label: 'Updates'),
          BottomNavigationBarItem(icon: Icon(Icons.group_outlined, color: Colors.white), label: 'Communities'),
          BottomNavigationBarItem(icon: Icon(Icons.call_outlined, color: Colors.white), label: 'Calls'),
        ],
        currentIndex: selectedIndex,
        onTap: indexSelector,
      ),
      body: pages[selectedIndex],
    );
  }
}