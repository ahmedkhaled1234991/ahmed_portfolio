import 'package:flutter/material.dart';

import '../../../values/values.dart';
import '../../../widgets/widgets.dart';
import 'about_me_social_buttons.dart';

class InfoSectionWeb extends StatelessWidget {
  const InfoSectionWeb({super.key});
  static const double kSpacingLg = 24.0;
  static const double kRunSpacingLg = 16.0;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InfoSection1(
                sectionTitle: Strings.ABOUT_ME,
                title1: Strings.ABOUT_ME_HEADER,
                title2: Strings.HELP,
                body: Strings.ABOUT_ME_DESC,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Strings.FOLLOW_ME_1,
                      style: textTheme.titleLarge?.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    const SpaceH16(),
                    const AboutMeSocialButtons(
                      spacing: kSpacingLg,
                      runSpacing: kRunSpacingLg,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
