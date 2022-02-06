import 'package:flutter/material.dart';

class OnboardNextButton extends StatelessWidget {
  const OnboardNextButton({
    Key? key,
    required this.primaryColor,
    required this.nextPressed,
    required this.pageCount,
    required this.selectedPage,
    required this.nextText,
    required this.lastText,
    required this.lastPressed,
  }) : super(key: key);

  final String nextText;
  final String lastText;
  final Color primaryColor;
  final VoidCallback nextPressed;
  final VoidCallback lastPressed;
  final int pageCount;
  final int selectedPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        onPressed: selectedPage + 1 == pageCount ? lastPressed : nextPressed,
        icon: Text(
          selectedPage + 1 == pageCount ? lastText : nextText,
          style: Theme.of(context).primaryTextTheme.button,
        ),
      ),
      decoration: BoxDecoration(
        color: primaryColor,
        shape: BoxShape.circle,
      ),
    );
  }
}
