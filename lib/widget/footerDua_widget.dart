import 'package:flutter/material.dart';

class FooterDuaWidget extends StatelessWidget {
  FooterDuaWidget({
    super.key, 
    required this.onPressedNext});

  final VoidCallback onPressedNext;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        ElevatedButton(
          onPressed: onPressedNext, 
          child: const Text("Next")
        ),
      ],
    );
  }
}