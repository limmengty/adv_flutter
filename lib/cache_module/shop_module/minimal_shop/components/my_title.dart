import 'package:flutter/material.dart';

class MyTitle extends StatelessWidget {
  final String title;
  const MyTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Text(
        title,
        style: TextStyle(
            color: Theme.of(context).colorScheme.secondary,
            fontSize: 25,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
