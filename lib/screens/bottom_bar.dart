import 'package:flutter/material.dart';
import 'package:ticket_booking/screens/home_screen.dart';
import 'package:ticket_booking/screens/profile_screen.dart';
import 'package:ticket_booking/screens/search_screen.dart';
import 'package:ticket_booking/screens/ticket_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex = 0;
  static final List<Widget> widgetOptions = <Widget>[
    const HomeSecreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen(),
  ];
  void onItemTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: widgetOptions[selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onItemTap,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.blueGrey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.airplane_ticket), label: 'Tickets'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
