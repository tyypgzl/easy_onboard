import 'package:easy_onboard/easy_onboard.dart';
import 'package:example/second_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Onboard(
        primaryColor: const Color(0xff6C63FF),
        onboardPages: onboardPages,
        skipButtonPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondPage()));
        },
        skipText: 'Atla',
        nextText: 'İleri',
        lastText: 'Bitir');
  }

  List<OnboardModel> onboardPages = [
    OnboardModel(imagePath: 'assets/images/barbecu.png', title: 'Order Your Food', subTitle: 'Now you can order food any time right from your phone.'),
    OnboardModel(imagePath: 'assets/images/hamburger.png', title: 'Cooking Safe Food', subTitle: 'We are maintain safty and We keep clean while making food.'),
    OnboardModel(imagePath: 'assets/images/ice_cream.png', title: 'Quick Delivery', subTitle: 'Orders your favourite meals will be immediately deliver.'),
  ];
}
