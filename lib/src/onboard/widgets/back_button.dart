import 'package:flutter/material.dart';

class OnboardBackButton extends StatelessWidget {
  final VoidCallback onPressed;
  const OnboardBackButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: const Icon(Icons.keyboard_arrow_left, size: 36, color: Colors.grey),
    );
  }
}
