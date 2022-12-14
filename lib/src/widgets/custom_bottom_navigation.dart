import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.pink,
        unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
        backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_outlined), label: 'Calendario'),
          BottomNavigationBarItem(
              icon: Icon(Icons.pie_chart_outline_sharp), label: 'Calendario'),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle), label: 'Calendario'),
        ]);
  }
}
