import 'package:designs/src/widgets/card_table.dart';
import 'package:flutter/material.dart';
// Widget's
import 'package:designs/src/widgets/Background.dart';
import 'package:designs/src/widgets/custom_bottom_navigation.dart';
import 'package:designs/src/widgets/page_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [Background(), _HomeBody()],
      ),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          // Titulos
          PageTitle(),
          // Card table
          CardTable()
        ],
      ),
    );
  }
}
