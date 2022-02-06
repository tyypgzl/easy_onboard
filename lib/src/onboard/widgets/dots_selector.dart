import 'package:flutter/material.dart';

import '../../utils/spaces.dart';

class DotSelector extends StatelessWidget {
  const DotSelector({Key? key, required this.primaryColor, required this.pageCount, required this.selectedPage}) : super(key: key);

  final Color primaryColor;
  final int pageCount;
  final int selectedPage;

  @override
  Widget build(BuildContext context) {
    const double size = 10;
    const double selectedSize = 12;
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: pageCount,
      itemBuilder: (context, index) {
        return Row(
          children: [
            Container(
              width: selectedPage == index ? selectedSize : size,
              height: selectedPage == index ? selectedSize : size,
              decoration: BoxDecoration(color: selectedPage == index ? primaryColor : Colors.grey, shape: BoxShape.circle),
            ),
            const SpaceBoxWidth.low(),
          ],
        );
      },
    );
  }
}
