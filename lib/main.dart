import 'package:designs/src/screens/basic_design.dart';
import 'package:designs/src/screens/home_screen.dart';
import 'package:designs/src/screens/scroll_design.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_design',
      routes: {
        'basic_design': (_) => const BasicDesignScreen(),
        'scroll_design': (_) => const ScrollDesignScreen(),
        'home_design': (_) => const HomeScreen()
      },
    );
  }
}
