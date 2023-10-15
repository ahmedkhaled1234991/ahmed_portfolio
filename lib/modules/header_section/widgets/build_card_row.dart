import 'package:flutter/material.dart';

import '../../../models/card_data.dart';
import '../../../utils/utils.dart';
import '../../../values/values.dart';
import '../../../widgets/widgets.dart';
import 'widgets.dart';

class CardRow {
  static List<Widget> buildCardRow({
    required BuildContext context,
    required List<CardData> data,
    required double width,
    bool isHorizontal = true,
    bool isWrap = false,
    bool hasAnimation = true,
  }) {
    TextTheme textTheme = Theme.of(context).textTheme;
    List<Widget> items = [];

    double cardWidth = responsiveSize(
      context,
      Sizes.WIDTH_32,
      Sizes.WIDTH_40,
      md: Sizes.WIDTH_36,
    );
    double iconSize = responsiveSize(
      context,
      Sizes.ICON_SIZE_18,
      Sizes.ICON_SIZE_24,
    );
    double trailingIconSize = responsiveSize(
      context,
      Sizes.ICON_SIZE_28,
      Sizes.ICON_SIZE_30,
      md: Sizes.ICON_SIZE_30,
    );
    for (int index = 0; index < data.length; index++) {
      items.add(
        CustomCard(
          width: width,
          height: responsiveSize(
            context,
            125,
            140,
          ),
          hasAnimation: hasAnimation,
          leading: CircularContainer(
            width: cardWidth,
            height: cardWidth,
            iconSize: iconSize,
            backgroundColor: data[index].circleBgColor,
            iconColor: data[index].leadingIconColor,
          ),
          title: Flexible(
            child: SelectableText(
              data[index].title,
              style: textTheme.titleMedium?.copyWith(
                fontSize: responsiveSize(
                  context,
                  Sizes.TEXT_SIZE_16,
                  Sizes.TEXT_SIZE_18,
                ),
              ),
            ),
          ),
          subtitle: Flexible(
            child: SelectableText(
              data[index].subtitle,
              style: textTheme.bodyLarge?.copyWith(
                  fontSize: responsiveSize(
                context,
                Sizes.TEXT_SIZE_14,
                Sizes.TEXT_SIZE_16,
              )),
            ),
          ),
          trailing: SizedBox(
            width: trailingIconSize,
          ),
        ),
      );
      //run this only on mobile devices and laptops but not on tablets.
      // We use `Wrap` to make the widgets wrap on the tablet view
      if (!isWrap) {
        if (isHorizontal) {
          items.add(const SpaceW36());
        } else {
          items.add(const SpaceH30());
        }
      }
    }

    return items;
  }
}
