import 'package:flutter/material.dart';
import 'dart:async';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import '../widgets/CusTomAppBar.dart';
import 'LandingPage.dart';
import './searchScreen.dart';

class MainHome extends StatefulWidget {
  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> with TickerProviderStateMixin {
  int currentPage = 0;
  Color primaryColor;

  PageController _pageController;

  @override
  void initState() {
    super.initState();
  }

  Widget current_page(position) {
    if (position == 0){
      return LandingPage();
    }
    return Center(
      child: SearchPanel()
    );
  }

  @override
  Widget build(BuildContext context) {
    primaryColor = Theme.of(context).primaryColor;
    return Scaffold(
      bottomNavigationBar: FancyBottomNavigation(
        textColor: Theme.of(context).hintColor,
        activeIconColor: Colors.white,
        circleColor: primaryColor,
        inactiveIconColor: primaryColor,
        initialSelection: 0,
        tabs: [
          TabData(iconData: Icons.home, title: "Home"),
          TabData(iconData: Icons.search, title: "Search"),
          TabData(iconData: Icons.shopping_cart, title: "Basket"),
          TabData(iconData: Icons.person, title: "Home"),
        ],
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
      body: current_page(currentPage),
      appBar: CustomAppBar(),
    );
  }
}
