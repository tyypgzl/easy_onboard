import 'package:flutter/material.dart';

class PaddingSymetric extends EdgeInsets {
  const PaddingSymetric.horizontalLow() : super.symmetric(horizontal: 8);
}

class PaddingAll extends EdgeInsets {
  const PaddingAll.low() : super.all(8);
  const PaddingAll.medium() : super.all(16);
  const PaddingAll.high() : super.all(24);
}
