import 'package:flutter/material.dart';
import 'package:smart_boxy/core/utilities/widget_utilities/buttonCustom.dart';
import 'package:smart_boxy/module/app_module.dart';

import '../../core.dart';

class SubmitButtonSmall extends StatelessWidget {
  final String text;
  final bool isPadding;
  final GestureTapCallback onTap;

  const SubmitButtonSmall({
     Key key,
     this.text,
     this.onTap,
    this.isPadding = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonCustom(
      widget: Container(
        padding: isPadding
            ? EdgeInsets.symmetric(
          horizontal: 30,
        )
            : EdgeInsets.all(0),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: fontGilroySize(
            fontWeight: FontWeight.w700,
            color: white,
            fontSize: 16,
          ),
        ),
      ),
      colorBg: blueFloatingColor,
      onTap: onTap,
    );
  }
}
