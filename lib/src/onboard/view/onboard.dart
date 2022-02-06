import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../../utils/paddings.dart';
import '../model/onboard_model.dart';
import '../widgets/back_button.dart';
import '../widgets/dots_selector.dart';
import '../widgets/next_button.dart';
import '../widgets/onboard_body.dart';
import '../widgets/skip_button.dart';
import '../../utils/extensions.dart';

class Onboard extends StatefulWidget {
  /// This color is generally used in the project.
  final Color primaryColor;

  ///Required to create pages.
  ///Length of the list must be more than 2.
  final List<OnboardModel> onboardPages;

  ///This func works when skip button is pressed.
  final VoidCallback skipButtonPressed;

  ///This text will appear in the skip button.
  final String? skipText;

  ///This text will appear on the next button on all pages except the last page.
  final String? nextText;

  ///This text will appear in the next button on the last page.
  final String? lastText;

  ///Onboard Widget for use in your project.
  Onboard(
      {Key? key,
      required this.primaryColor,
      required this.onboardPages,
      required this.skipButtonPressed,
      required this.skipText,
      required this.nextText,
      required this.lastText})
      : assert(onboardPages.isNotEmpty),
        assert(onboardPages.length > 2),
        assert(nextText != null),
        assert(skipText != null),
        assert(lastText != null),
        super(key: key);

  @override
  _OnboardState createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const PaddingAll.low(),
          child: Column(
            children: [
              const Spacer(flex: 1),
              Expanded(flex: 5, child: _topButtons(context)),
              const Spacer(flex: 1),
              Expanded(flex: 40, child: _bodyWidgets()),
              const Spacer(flex: 3),
              Expanded(flex: 9, child: _bottomButtons(context)),
            ],
          ),
        ),
      ),
    );
  }

  Row _topButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        OnboardBackButton(
          onPressed: () {
            int page = _currentIndex;
            if (page > 0) {
              page--;
            }
            _pageController.animateToPage(page, duration: context.lowDuration, curve: Curves.easeOut);
          },
        ),
        OnboardSkipButton(
          title: widget.skipText ?? StringConstants.instance.skipText,
          onPressed: widget.skipButtonPressed,
        )
      ],
    );
  }

  PageView _bodyWidgets() {
    return PageView.builder(
      onPageChanged: (value) {
        setState(() {
          _currentIndex = value;
        });
      },
      controller: _pageController,
      itemCount: widget.onboardPages.length,
      itemBuilder: (context, index) => OnboardBody(
        onboardModel: widget.onboardPages[index],
        primaryColor: widget.primaryColor,
      ),
    );
  }

  Row _bottomButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Spacer(flex: 1),
        Expanded(
            flex: 10,
            child: DotSelector(
              primaryColor: widget.primaryColor,
              pageCount: widget.onboardPages.length,
              selectedPage: _currentIndex,
            )),
        const Spacer(flex: 30),
        Expanded(
          flex: 10,
          child: OnboardNextButton(
            nextText: widget.nextText ?? StringConstants.instance.nextText,
            lastText: widget.lastText ?? StringConstants.instance.lastPageText,
            primaryColor: widget.primaryColor,
            pageCount: widget.onboardPages.length,
            selectedPage: _currentIndex,
            nextPressed: () {
              int page = _currentIndex;
              if (page + 1 < widget.onboardPages.length) {
                page = page + 1;
              }
              _pageController.animateToPage(page, duration: context.lowDuration, curve: Curves.easeIn);
            },
            lastPressed: widget.skipButtonPressed,
          ),
        ),
      ],
    );
  }
}
