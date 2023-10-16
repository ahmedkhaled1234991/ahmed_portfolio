import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../values/values.dart';
import '../../../widgets/widgets.dart';

class SocialIcons {
  static List<Widget> buildSocialIcons(List<SocialButtonData> socialItems) {
    List<Widget> items = [];
    for (int index = 0; index < socialItems.length; index++) {
      items.add(
        LinkButton(
          url: socialItems[index].url,
          child: socialItems[index].iconData != null
              ? Icon(
                  socialItems[index].iconData,
                  color: AppColors.black,
                  size: Sizes.ICON_SIZE_18,
                )
              : SvgPicture.asset(
                  ImagePath.upWorkIcon,
                  width: Sizes.ICON_SIZE_21,
                ),
        ),
      );
      items.add(const SpaceW20());
    }
    return items;
  }
}
