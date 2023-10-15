import 'package:flutter/material.dart';

import '../values/values.dart';

class CustomVerticalDivider extends StatelessWidget {
  const CustomVerticalDivider({
    super.key,
    this.thickness = 0.8,
    this.width,
    this.color = AppColors.black,
  });

  final double? width;
  final double thickness;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return CustomVerticalDivider(thickness: thickness);
  }
}
