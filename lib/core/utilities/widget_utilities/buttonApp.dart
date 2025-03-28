import 'package:flutter/material.dart';
import '../../core.dart';

class ButtonApp extends StatefulWidget {
  final Color color;
  final String text;
  final EdgeInsets margin;
  final GestureTapCallback onTap;

  const ButtonApp({
    Key key,
    @required this.color,
    @required this.text,
    @required this.onTap,
    @required this.margin,
  }) : super(key: key);

  @override
  _ButtonAppState createState() => _ButtonAppState();
}

class _ButtonAppState extends State<ButtonApp> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        margin: widget.margin,
        padding: EdgeInsets.only(
          top: 20,
          bottom: 20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            20,
          ),
          color: widget.color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                widget.text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 17,
                  color: white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
