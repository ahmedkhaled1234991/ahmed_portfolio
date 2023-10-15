part of values;

class Data {
  static List<SocialButtonData> socialData = [
    SocialButtonData(
      tag: Strings.EMAIL,
      iconData: FontAwesomeIcons.solidEnvelope,
      url: Strings.EMAIL_URL,
    ),
    SocialButtonData(
      tag: Strings.LINKED_IN_URL,
      iconData: FontAwesomeIcons.linkedin,
      url: Strings.LINKED_IN_URL,
    ),
    SocialButtonData(
      tag: Strings.GITHUB_URL,
      iconData: FontAwesomeIcons.github,
      url: Strings.GITHUB_URL,
    ),
    SocialButtonData(
      tag: Strings.TWITTER_URL,
      iconData: FontAwesomeIcons.twitter,
      url: Strings.TWITTER_URL,
    ),
    SocialButtonData(
      tag: Strings.INSTAGRAM_URL,
      iconData: FontAwesomeIcons.instagram,
      url: Strings.INSTAGRAM_URL,
    ),
  ];
  static List<SocialButton2Data> socialData2 = [
    SocialButton2Data(
      title: '',
      iconData: FontAwesomeIcons.github,
      url: Strings.GITHUB_URL,
      titleColor: AppColors.brown300,
      buttonColor: AppColors.brown300,
      iconColor: AppColors.white,
    ),
    SocialButton2Data(
      title: '',
      iconData: FontAwesomeIcons.linkedin,
      url: Strings.LINKED_IN_URL,
      titleColor: AppColors.brown300,
      buttonColor: AppColors.brown300,
      iconColor: AppColors.white,
    ),
    SocialButton2Data(
      title: '',
      iconData: FontAwesomeIcons.twitter,
      url: Strings.TWITTER_URL,
      titleColor: AppColors.brown300,
      buttonColor: AppColors.brown300,
      iconColor: AppColors.white,
    ),
    SocialButton2Data(
      title: '',
      iconData: FontAwesomeIcons.instagram,
      url: Strings.INSTAGRAM_URL,
      titleColor: AppColors.brown300,
      buttonColor: AppColors.brown300,
      iconColor: AppColors.white,
    ),
  ];

  static List<SkillCardData> skillCardData = [
    SkillCardData(
      title: Strings.SKILLS_1,
      description: Strings.SKILLS_1_DESC,
      iconData: Icons.mobile_friendly,
    ),
    SkillCardData(
      title: "",
      description: "",
      iconData: Icons.pages_outlined,
    ), //not being used
    SkillCardData(
      title: Strings.SKILLS_2,
      description: Strings.SKILLS_2_DESC,
      iconData: Icons.cloud,
    ),
    SkillCardData(
      title: Strings.SKILLS_3,
      description: Strings.SKILLS_3_DESC,
      iconData: FontAwesomeIcons.fileCode,
    ),
    SkillCardData(
      title: Strings.SKILLS_4,
      description: Strings.SKILLS_4_DESC,
      iconData: FontAwesomeIcons.git,
    ),
  ];

  static List<CardData> homeCardData = [
    CardData(
      title: Strings.FLUTTER_DEVELOPER,
      subtitle: Strings.FLUTTER_DEVELOPER_DESC,
      leadingIcon: Icons.done,
      trailingIcon: Icons.chevron_right,
    ),
    CardData(
      title: Strings.COMMUNITY,
      subtitle: Strings.COMMUNITY_DESC,
      leadingIcon: Icons.done,
      trailingIcon: Icons.chevron_right,
      circleBgColor: AppColors.brown300,
    ),
    CardData(
      title: Strings.FREELANCER,
      subtitle: Strings.FREELANCER_DESC,
      leadingIcon: Icons.done,
      trailingIcon: Icons.chevron_right,
      leadingIconColor: AppColors.black,
      circleBgColor: AppColors.grey50,
    ),
  ];

  static List<FooterItem> footerItems = [
    const FooterItem(
      title: "${Strings.PHONE_ME}:",
      subtitle: Strings.PHONE_NUMBER,
      iconData: FeatherIcons.phone,
      url: Strings.PHONE_NUMBER_URL,
    ),
    const FooterItem(
      title: "${Strings.MAIL_ME}:",
      subtitle: Strings.DEV_EMAIL_2,
      iconData: FontAwesomeIcons.paperPlane,
      url: Strings.EMAIL_URL,
    ),
    const FooterItem(
      title: "${Strings.FOLLOW_ME_2}:",
      subtitle: Strings.LINKEDINUSER,
      iconData: FontAwesomeIcons.linkedinIn,
      url: Strings.LINKED_IN_URL,
    ),
  ];

  static List<NavItemData> navItems = [
    NavItemData(name: Strings.HOME, key: GlobalKey(), isSelected: true),
    NavItemData(name: Strings.ABOUT, key: GlobalKey()),
    NavItemData(name: Strings.SKILLS, key: GlobalKey()),
  ];
}
