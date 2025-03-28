import 'package:flutter/material.dart';

class ImageSmartBoxy extends StatelessWidget {
  final String image;
  final double width;
  final double height;
  final BoxFit boxFit;
  final Color color;

  const ImageSmartBoxy({
    Key key,
    this.image,
    this.width,
    this.height,
    this.color,
    this.boxFit = BoxFit.fill,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: width,
      height: height,
      fit: boxFit,
      color: color,
      filterQuality: FilterQuality.high,
    );
  }
}
