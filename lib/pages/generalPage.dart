import 'package:app_031/pages/Categories.dart';
import 'package:app_031/pages/HomePage.dart';
import 'package:app_031/pages/Inbox.dart';
import 'package:app_031/pages/Manage_order.dart';
import 'package:app_031/pages/account.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class GeneralPage extends StatefulWidget {
  static const String id = "gereal_page";

  const GeneralPage({Key? key}) : super(key: key);

  @override
  State<GeneralPage> createState() => _GeneralPageState();
}

class _GeneralPageState extends State<GeneralPage> {
  @override
  List _pages = [
    HomePage(),
    InboxPage(),
    Categories(),
    Manage_order(),
    AccountPage(),
  ];
  int _myPageIndex = 0;

  void myOnTap(int index) {
    setState(() {
      _myPageIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_myPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: myOnTap,
        currentIndex: _myPageIndex,
        selectedItemColor: Color(0xff00ff00),
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        //enableFeedback: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,size:40,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.email_outlined,size:40,),label: ""),
          BottomNavigationBarItem(icon: Icon(Iconsax.search_normal,size:40,),label: ""),
          BottomNavigationBarItem(icon: Icon(Iconsax.clipboard_text,size:40,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined,size:40,),label: ""),
        ],
      ),
    );
  }
}
