import 'package:flutter/material.dart';

class FooterTigaWidget extends StatelessWidget {
  FooterTigaWidget({
    super.key, 
    required this.onPressedEnd});

  final VoidCallback onPressedEnd;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        ElevatedButton(
          onPressed: onPressedEnd, 
          child: const Text("Selesai")
        ),
      ],
    );
  }
}