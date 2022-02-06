import 'package:flutter/material.dart';

class OnboardSkipButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  const OnboardSkipButton({Key? key, required this.onPressed, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.grey),
      ),
    );
  }
}
