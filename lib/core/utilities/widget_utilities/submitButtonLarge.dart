import 'package:flutter/material.dart';
import 'package:smart_boxy/core/utilities/widget_utilities/buttonCustom.dart';
import 'package:smart_boxy/module/Address/views/add.dart';
import 'package:smart_boxy/module/Address/views/address.dart';
import 'package:smart_boxy/module/login/views/otp.dart';


import '../../core.dart';

class SubmitButtonLarge extends StatelessWidget {
  final String text;
  final bool isMargin;
  final GestureTapCallback onTap;

  const SubmitButtonLarge({
    Key key,
    @required this.text,
    @required this.onTap,
    this.isMargin = false,
    Null Function() onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: isMargin
            ? EdgeInsets.symmetric(vertical: 5, horizontal: 25)
            : EdgeInsets.all(0),
        // ignore: missing_required_param
        child: ButtonCustom(
          widget: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: Text(text,
                        textAlign: TextAlign.center,
                        style: fontGilroySize(
                            fontWeight: FontWeight.w600,
                            color: white,
                            fontSize: 14)))
              ]),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Otp()),
            );
            //signup screen
          },
        ));
  }
}
//otpbutton

class otpButtonLarge extends StatelessWidget {
  final String text;
  final bool isMargin;
  final GestureTapCallback onTap;

  const otpButtonLarge({
    Key key,
    @required this.text,
    @required this.onTap,
    this.isMargin = false,
    Null Function() onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: isMargin
            ? EdgeInsets.symmetric(vertical: 5, horizontal: 25)
            : EdgeInsets.all(0),
        // ignore: missing_required_param
        child: ButtonCustom(
          widget: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: Text(text,
                        textAlign: TextAlign.center,
                        style: fontGilroySize(
                            fontWeight: FontWeight.w600,
                            color: white,
                            fontSize: 14)))
              ]),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => address()),
            );
          },
        ));
  }
}

//SubmitButton

class submitButtonLarge extends StatelessWidget {
  final String text;
  final bool isMargin;
  final GestureTapCallback onTap;

  const submitButtonLarge({
    Key key,
    @required this.text,
    @required this.onTap,
    this.isMargin = false,
    Null Function() onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: isMargin
            ? EdgeInsets.symmetric(vertical: 5, horizontal: 25)
            : EdgeInsets.all(0),
        // ignore: missing_required_param
        child: ButtonCustom(
          widget: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: Text(text,
                        textAlign: TextAlign.center,
                        style: fontGilroySize(
                            fontWeight: FontWeight.w600,
                            color: white,
                            fontSize: 14)))
              ]),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => addaddress()),
            );
          },
        ));
  }
}

// address
class addButtonLarge extends StatelessWidget {
  final String text;
  final bool isMargin;
  final GestureTapCallback onTap;

  const addButtonLarge({
    Key key,
    @required this.text,
    @required this.onTap,
    this.isMargin = false,
    Null Function() onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        margin: isMargin
            ? EdgeInsets.symmetric(vertical: 5, horizontal: 25)
            : EdgeInsets.all(0),
        // ignore: missing_required_param
        child: AddButtonCustom(
          widget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                // padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.add,
                  size: 22,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 7),
              Text('Add New',
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.normal,
                      letterSpacing: 0,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 14))
            ],
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => addaddress()),
            );
          },
        ));
  }
}

// importyes
class importyesButtonlarge extends StatelessWidget {
  final String text;
  final bool isMargin;
  final GestureTapCallback onTap;

  const importyesButtonlarge({
    Key key,
    @required this.text,
    @required this.onTap,
    this.isMargin = false,
    Null Function() onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        margin: isMargin
            ? EdgeInsets.symmetric(vertical: 5, horizontal: 25)
            : EdgeInsets.all(0),
        // ignore: missing_required_param
        child: Yes(
          widget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Yes',
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.normal,
                      letterSpacing: 0,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 14))
            ],
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => address()),
            );
          },
        ));
  }
}

// importlater
class importlaterButtonlarge extends StatelessWidget {
  final String text;
  final bool isMargin;
  final GestureTapCallback onTap;

  const importlaterButtonlarge({
    Key key,
    @required this.text,
    @required this.onTap,
    this.isMargin = false,
    Null Function() onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        margin: isMargin
            ? EdgeInsets.symmetric(vertical: 5, horizontal: 25)
            : EdgeInsets.all(0),
        // ignore: missing_required_param
        child: later(
          widget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('later',
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.normal,
                      letterSpacing: 0,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 14))
            ],
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => address()),
            );
          },
        ));
  }
}
