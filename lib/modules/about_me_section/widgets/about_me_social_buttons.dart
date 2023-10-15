import 'package:flutter/material.dart';

import '../../../utils/functions.dart';
import '../../../values/values.dart';
import '../../../widgets/widgets.dart';

class AboutMeSocialButtons extends StatelessWidget {
  const AboutMeSocialButtons({
    super.key,
    required this.spacing,
    required this.runSpacing,
  });

  final double spacing;
  final double runSpacing;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: spacing,
      runSpacing: runSpacing,
      children: Data.socialData2
          .map(
            (e) => SocialButton2(
              title: e.title.toUpperCase(),
              iconData: e.iconData,
              onPressed: () => openUrlLink(e.url),
              titleColor: e.titleColor,
              buttonColor: e.buttonColor,
              iconColor: e.iconColor,
            ),
          )
          .toList(),
    );
  }
}
