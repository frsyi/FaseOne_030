import 'package:flutter/material.dart';

class HeaderSatuWidget extends StatelessWidget {
  const HeaderSatuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 25,
        ),
        Text(
          "Restaurant",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20
          )),
        SizedBox(
          height: 25,
        ),
        CircleAvatar(
          backgroundImage: NetworkImage(
            "https://img.freepik.com/premium-vector/catering-quality-food-design-logo_187482-593.jpg"
          ),
          radius: 70,
        )
      ],
    );
  }
}