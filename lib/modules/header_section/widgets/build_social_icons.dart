import 'package:flutter/material.dart';

import '../../../values/values.dart';
import '../../../widgets/widgets.dart';

class SocialIcons {
  static List<Widget> buildSocialIcons(List<SocialButtonData> socialItems) {
    List<Widget> items = [];
    for (int index = 0; index < socialItems.length; index++) {
      items.add(
        LinkButton(
          url: socialItems[index].url,
          child: Icon(
            socialItems[index].iconData,
            color: AppColors.black,
            size: Sizes.ICON_SIZE_18,
          ),
        ),
      );
      items.add(const SpaceW20());
    }
    return items;
  }
}
