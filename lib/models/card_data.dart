import 'package:flutter/material.dart';

import '../../values/values.dart';

class CardData {
  IconData leadingIcon;
  IconData trailingIcon;
  Color trailingIconColor;
  Color leadingIconColor;
  Color circleBgColor;
  String title;
  String subtitle;

  CardData({
    required this.leadingIcon,
    required this.trailingIcon,
    this.circleBgColor = AppColors.black,
    this.leadingIconColor = AppColors.white,
    this.trailingIconColor = AppColors.grey300,
    required this.title,
    required this.subtitle,
  });
}
