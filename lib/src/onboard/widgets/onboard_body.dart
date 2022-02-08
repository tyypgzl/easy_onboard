import 'package:flutter/material.dart';

import '../../utils/paddings.dart';
import '../model/onboard_model.dart';

class OnboardBody extends StatelessWidget {
  final OnboardModel onboardModel;
  final Color primaryColor;

  const OnboardBody({
    Key? key,
    required this.onboardModel,
    required this.primaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const PaddingAll.low(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 5,
            child: Text(
              onboardModel.title,
              style: Theme.of(context).textTheme.headline5!.copyWith(color: primaryColor, fontSize: 28),
              textAlign: TextAlign.left,
            ),
          ),
          Expanded(
            flex: 5,
            child: Text(
              onboardModel.subTitle,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.grey),
            ),
          ),
          Expanded(
            flex: 25,
            child: Image.asset(
              onboardModel.imagePath,
              filterQuality: FilterQuality.high,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
