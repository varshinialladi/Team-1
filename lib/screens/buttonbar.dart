import 'package:flutter/material.dart';

import 'package:team1/BottomNav/home_screen.dart';
import 'package:team1/BottomNav/profile.dart';
import 'package:team1/Cart/cart.dart';
import 'package:team1/Favorite/favorite.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var navBody = [HomePage(), FavaroitePage(), Cartpage(), Profilepage()];

    var navBarItems = [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: "Home",
        backgroundColor: Colors.black,
      ),

      BottomNavigationBarItem(
        icon: Icon(Icons.favorite),
        label: "Favorite",
        backgroundColor: Colors.black,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart),
        label: "cart",
        backgroundColor: Colors.black,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: "Profile",
        backgroundColor: const Color.fromARGB(255, 255, 254, 254),
      ),
    ];
    return Scaffold(
      appBar: AppBar(),
      body: navBody[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 1,
        items: navBarItems,
        type: BottomNavigationBarType.fixed,
        iconSize: 35,
        selectedItemColor: const Color.fromARGB(255, 6, 6, 6),
        unselectedItemColor: const Color.fromARGB(172, 108, 110, 113),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
