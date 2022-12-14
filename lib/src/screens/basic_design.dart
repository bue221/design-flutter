import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Imagen
          const Image(image: AssetImage('assets/fondo.jpg')),
          Container(
            height: 20,
          ),
          // Title widget
          const Title(),
          Container(
            height: 20,
          ),
          // Buttons section
          const ButtonsSections(),
          Container(
            height: 20,
          ),
          //Description
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: const Text(
                'Ipsum esse dolore adipisicing quis ex proident nostrud amet ipsum. Dolore ut reprehenderit deserunt reprehenderit cupidatat amet nostrud tempor et veniam sunt aute. Anim est adipisicing do nisi sit esse reprehenderit anim nostrud. Laborum culpa cupidatat sit id aliquip officia aliquip qui elit nostrud eiusmod.'),
          )
        ],
      ),
    );
  }
}

class ButtonsSections extends StatelessWidget {
  const ButtonsSections({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomButton(icon: Icons.call, text: 'Call'),
          CustomButton(icon: Icons.pin_drop, text: 'Routes'),
          CustomButton(icon: Icons.share, text: 'Share'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  //props
  final IconData icon;
  final String text;
  // constructor
  const CustomButton({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 30,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
            Text(
              'Oeschinen Lake Campground',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Kandersteg, Switzerland',
              style: TextStyle(color: Colors.black45),
            )
          ]),
          Expanded(child: Container()),
          const Icon(Icons.star, color: Colors.red),
          const Text('41'),
        ],
      ),
    );
  }
}
