import 'package:flutter/material.dart';
import 'package:travel_app_flutter/pages/home_page.dart';
import 'package:travel_app_flutter/pages/navpages/bar_item_page.dart';
import 'package:travel_app_flutter/pages/navpages/my_page.dart';
import 'package:travel_app_flutter/pages/navpages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: (i) => onTap(i),
        selectedFontSize: 0, unselectedFontSize: 0,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0, // hiding the nav line
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.apps,
            ),
          ),
          BottomNavigationBarItem(
            label: "Bar",
            icon: Icon(
              Icons.bar_chart,
            ),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(
              Icons.search,
            ),
          ),
          BottomNavigationBarItem(
            label: "Me",
            icon: Icon(
              Icons.person,
            ),
          )
        ],
      ),
    );
  }
}
