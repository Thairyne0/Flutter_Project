import 'package:flutter/material.dart';
import 'package:flutter_project/pages/account.dart';
import 'package:flutter_project/pages/mainPage.dart';

class bottomAppBar extends StatefulWidget {
  const bottomAppBar({Key? key}) : super(key: key);

  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<bottomAppBar>{
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    mainPage(),
    Center(
      child: Text(
        'Search',
        style: TextStyle(fontSize: 50),
      ),
    ),
    Center(
      child: Text(
        'Add',
        style: TextStyle(fontSize: 50),
      ),
    ),
    accountPage(),
    Center(
      child: Text(
        'Menu',
        style: TextStyle(fontSize: 50),
      ),
    )
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
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
        ],
      ),

    );

    throw UnimplementedError();
  }
}
