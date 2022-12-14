import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
              text: 'General', icon: Icons.pie_chart_sharp, color: Colors.blue),
          _SingleCard(
              text: 'Transport',
              icon: Icons.car_rental_outlined,
              color: Colors.purple)
        ]),
        TableRow(children: [
          _SingleCard(
              text: 'Shopping',
              icon: Icons.card_travel_outlined,
              color: Colors.pink),
          _SingleCard(
              text: 'Bill', icon: Icons.monetization_on, color: Colors.yellow)
        ]),
        TableRow(children: [
          _SingleCard(
              text: 'Entretaiment',
              icon: Icons.card_travel_outlined,
              color: Colors.pink),
          _SingleCard(
              text: 'Grocery',
              icon: Icons.monetization_on,
              color: Colors.yellow)
        ]),
        TableRow(children: [
          _SingleCard(
              text: 'Entretaiment',
              icon: Icons.card_travel_outlined,
              color: Colors.pink),
          _SingleCard(
              text: 'Grocery',
              icon: Icons.monetization_on,
              color: Colors.yellow)
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  // Props
  final IconData icon;
  final String text;
  final Color color;
  //
  const _SingleCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleAvatar(
                backgroundColor: color,
                // ignore: sort_child_properties_last
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 30,
                ),
                radius: 30,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                text,
                style: TextStyle(color: color, fontSize: 18),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
