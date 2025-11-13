import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Function()? onTap;
  const MyButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.tertiary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Center(child: Text(title)),
        ),
      ),
    );
  }
}
