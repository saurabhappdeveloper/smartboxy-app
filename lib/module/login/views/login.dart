import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:smart_boxy/core/core.dart';
import 'package:smart_boxy/core/utilities/image_data/image_iThinkLogistic.dart';
import 'package:smart_boxy/core/utilities/widget_utilities/submitButtonLarge.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  var isShow = true.obs;
  static const double dist = 8.0;
  static const double borderRadius = 8.0;
  @override
  void initState() {
    super.initState();
    email.text = 'iparmar@SmartBoxys.com';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColorWhite,
        body: SingleChildScrollView(
            child: Form(
                key: _formKey,
                child: Column(children: [
                  SizedBox(height: 85),
                  ImageSmartBoxy(
                    image: AppIconImage.loginImage,
                    boxFit: BoxFit.fill,
                    height: 73,
                  ),
                  SizedBox(height: 48),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        Variable.EnterMobileNumber,
                        style: headingBlueStyle,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        Variable.EnterMobileNumber10Digit,
                        style: headingBlueStyle10digitnumber,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      width: MediaQuery.of(context).size.width,
                      height: 64,
                      child: Stack(children: <Widget>[
                        Container(
                            child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 64,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(16),
                                    topRight: Radius.circular(16),
                                    bottomLeft: Radius.circular(16),
                                    bottomRight: Radius.circular(16),
                                  ),
                                  color: Color.fromRGBO(246, 246, 248, 1),
                                ))),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(80, 8, 0, 0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'xxxxxxxxxx',
                              ),
                              style: TextStyle(
                                color: Color.fromRGBO(59, 59, 88, 1),
                                fontFamily: 'Inter',
                                fontSize: 16,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                              ),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                bottomLeft: Radius.circular(16),
                              ),
                              color: Color.fromRGBO(241, 241, 244, 1),
                            ),
                            width: 60,
                            alignment: Alignment.center,
                            child: Text(
                              '+91',
                              textAlign: TextAlign.left,
                              style: country_code_style,
                            )),
                      ])),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        Variable.YouwillreceiveanOTPtoverifynumber,
                        style:
                            headingBlueStyleYouwillreceiveanOTPtoverifynumber,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(height: 180),
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.70,
                    child: Container(
                      child: Text(
                        Variable.neverspamshareyournumberwithanyone,
                        style:
                            headingBlueStyleYouwillreceiveanOTPtoverifynumber,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(height: 22),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    margin: EdgeInsets.symmetric(horizontal: 3),
                    child: SubmitButtonLarge(
                      text: 'Request OTP',
                      onTap: () async {},
                    ),
                  ),
                  SizedBox(height: 10)
                ]))));
  }
}
