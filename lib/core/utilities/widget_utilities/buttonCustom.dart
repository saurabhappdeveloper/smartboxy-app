import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  final Widget widget;
  final Color colorBg;
  final bool isSmall;
  final bool isHorizontal;
  final GestureTapCallback onTap;

  const ButtonCustom({
    Key key,
    @required this.widget,
    @required this.colorBg,
    @required this.onTap,
    this.isSmall = false,
    this.isHorizontal = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(isSmall ? 8 : 12),
                color: colorBg,
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(251, 79, 29, 1),
                    Color.fromRGBO(157, 2, 96, 1)
                  ],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight,
                )),
            padding: EdgeInsets.symmetric(
                vertical: isSmall ? 12 : 16, horizontal: isHorizontal ? 47 : 0),
            child: widget));
  }
}

// address
class AddButtonCustom extends StatelessWidget {
  final Widget widget;
  final Color colorBg;
  final bool isSmall;
  final bool isHorizontal;
  final GestureTapCallback onTap;

  const AddButtonCustom({
    Key key,
    @required this.widget,
    @required this.colorBg,
    @required this.onTap,
    this.isSmall = false,
    this.isHorizontal = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
            height: 45,
            width: 140,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: colorBg,
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(251, 79, 29, 1),
                    Color.fromRGBO(157, 2, 96, 1)
                  ],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight,
                )),
            // padding: EdgeInsets.symmetric(
            //     vertical: isSmall ? 12 : 16, horizontal: isHorizontal ? 47 : 0),
            child: widget));
  }
}

// importyes
class Yes extends StatelessWidget {
  final Widget widget;
  final Color colorBg;
  final bool isSmall;
  final bool isHorizontal;
  final GestureTapCallback onTap;

  const Yes({
    Key key,
    @required this.widget,
    @required this.colorBg,
    @required this.onTap,
    this.isSmall = false,
    this.isHorizontal = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
            height: 50,
            width: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: colorBg,
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(251, 79, 29, 1),
                    Color.fromRGBO(157, 2, 96, 1)
                  ],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight,
                )),
            // padding: EdgeInsets.symmetric(
            //     vertical: isSmall ? 12 : 16, horizontal: isHorizontal ? 47 : 0),
            child: widget));
  }
}

// importlater
class later extends StatelessWidget {
  final Widget widget;
  final Color colorBg;
  final bool isSmall;
  final bool isHorizontal;
  final GestureTapCallback onTap;

  const later({
    Key key,
    @required this.widget,
    @required this.colorBg,
    @required this.onTap,
    this.isSmall = false,
    this.isHorizontal = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
            height: 50,
            color: Color(0xffF6F6F8),
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            // padding: EdgeInsets.symmetric(
            //     vertical: isSmall ? 12 : 16, horizontal: isHorizontal ? 47 : 0),
            child: widget));
  }
}
