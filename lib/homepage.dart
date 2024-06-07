import 'package:flutter/material.dart';
import 'package:flutter_project/pages/account.dart';
import 'package:flutter_project/pages/addAuction.dart';
import 'package:flutter_project/pages/alertPage.dart';
import 'package:flutter_project/pages/mainPage.dart';
import 'package:flutter_project/pages/searchPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage>{
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const mainPage(),
    searchPage(),
    addAuctionPage(),
    const accountPage(),
    const alertPage(),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xFF080808),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        fixedColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
          BottomNavigationBarItem(icon: Icon(Icons.add_alert_rounded), label: 'Alerts'),
        ],
      ),

    );

    throw UnimplementedError();
  }
}