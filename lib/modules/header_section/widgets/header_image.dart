import 'package:flutter/material.dart';

import '../../../values/values.dart';

class HeaderImage extends StatefulWidget {
  const HeaderImage({
    Key? key,
    required this.controller,
    this.globeSize = 150,
    this.imageHeight,
    this.imageWidth,
    this.fit,
  }) : super(key: key);

  final double? globeSize;
  final double? imageWidth;
  final double? imageHeight;
  final BoxFit? fit;
  final AnimationController controller;

  @override
  State<HeaderImage> createState() => _HeaderImageState();
}

class _HeaderImageState extends State<HeaderImage> {
  @override
  void dispose() {
    widget.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: -40,
          child: RotationTransition(
            turns: widget.controller,
            child: Image.asset(
              ImagePath.kDotsGlobeGrey,
              height: widget.globeSize,
              width: widget.globeSize,
            ),
          ),
        ),
        Image.asset(
          ImagePath.kDevHeader,
          width: widget.imageWidth,
          height: widget.imageHeight,
          fit: widget.fit,
        ),
      ],
    );
  }
}
