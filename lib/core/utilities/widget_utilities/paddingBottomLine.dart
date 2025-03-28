import 'package:flutter/material.dart';

import '../../core.dart';

class PaddingBottomLine extends StatelessWidget {
  final double height;
  final Widget widgetCenter;

  const PaddingBottomLine({
    Key key,
    @required this.height,
    @required this.widgetCenter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 24,
      ),
      child: Column(
        children: [
          SizedBox(
            height: height,
          ),
          Container(padding: EdgeInsets.only(
            right: 24,
          ),child: widgetCenter),
          SizedBox(
            height: height,
          ),
        ],
      ),
    );
  }
}
