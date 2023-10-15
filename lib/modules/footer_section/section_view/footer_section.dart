import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../utils/utils.dart';
import '../../../values/values.dart';
import '../../../widgets/widgets.dart';
import '../widgets/widget.dart';

class FooterSection extends StatefulWidget {
  const FooterSection({super.key});
  @override
  State<FooterSection> createState() => _FooterSectionState();
}

class _FooterSectionState extends State<FooterSection> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    TextStyle? footerTextStyle = textTheme.bodySmall?.copyWith(
      color: AppColors.primaryText2,
      fontWeight: FontWeight.bold,
    );
    double screenWidth = widthOfScreen(context) - (getSidePadding(context) * 2);
    double screenHeight = heightOfScreen(context);
    double contentAreaWidth = screenWidth;
    double contentAreaHeight = responsiveSize(
      context,
      screenHeight,
      screenHeight * 0.7,
      md: screenHeight * 0.85,
      sm: screenHeight * 0.85,
    );

    return ContentArea(
      padding: EdgeInsets.symmetric(horizontal: getSidePadding(context)),
      child: Column(
        children: [
          ResponsiveBuilder(
            builder: (context, sizingInformation) {
              double screenWidth = sizingInformation.screenSize.width;

              if (screenWidth <= (const RefinedBreakpoints().tabletNormal)) {
                return FooterMobile(
                  width: contentAreaWidth,
                  height: contentAreaHeight,
                );
              } else {
                return FooterWeb(
                  width: contentAreaWidth,
                  height: contentAreaHeight,
                );
              }
            },
          ),
          const SpaceH20(),
          Text(
            Strings.RIGHTS_RESERVED,
            style: footerTextStyle,
          ),
          Center(
            child: InkWell(
              onTap: () => openUrlLink(Strings.LINKED_IN_URL),
              child: RichText(
                text: TextSpan(
                  text: "${Strings.BUILT_BY} ",
                  style: footerTextStyle,
                  children: [
                    TextSpan(
                      text: Strings.AHMED_KHALED,
                      style: footerTextStyle?.copyWith(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w900,
                        color: AppColors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SpaceH4(),
          const SpaceH20(),
        ],
      ),
    );
  }
}
