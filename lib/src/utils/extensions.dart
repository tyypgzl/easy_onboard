import 'package:flutter/material.dart';

extension OnboardStringExtension on String {
  String get toPNG => 'assets/images/$this.png';
}

extension OnboardDurationExtension on BuildContext {
  Duration get lowDuration => const Duration(milliseconds: 500);
}
