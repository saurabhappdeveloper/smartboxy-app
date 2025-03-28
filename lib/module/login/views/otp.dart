import 'dart:async';
// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:smart_boxy/core/core.dart';
import 'package:smart_boxy/core/utilities/image_data/image_iThinkLogistic.dart';
import 'package:smart_boxy/core/utilities/widget_utilities/submitButtonLarge.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:simple_timer/simple_timer.dart';

class Otp extends StatefulWidget {
  @override
  _Otpin createState() => _Otpin();
}

class _Otpin extends State<Otp> {
  var resent = false;
  var reverse = false;

  static const double dist = 8.0;
  static const double borderRadius = 8.0;

  void resend() {
    setState(() {
      resent = true;
    });
  }

  void again() {
    setState(() {
      reverse = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false, // Don't show the leading button
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(Icons.arrow_back_ios, color: Color(0xFF3C3C58)),
              ),
              Text(
                'Back',
                style: TextStyle(color: Color(0xFF3C3C58)),
              ),
            ],
          ),
          elevation: 0,
        ),
        backgroundColor: backgroundColorWhite,
        body: SingleChildScrollView(
            child: Form(
                child: Column(children: [
          SizedBox(height: 70),
          ImageSmartBoxy(
            image: AppIconImage.OtpImage,
            boxFit: BoxFit.fill,
            height: 73,
          ),
          SizedBox(height: 48),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                Variable.EnterOTP,
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
                Variable.An5digitcodehasbeensendto,
                style: headingBlueStyle10digitnumber,
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
                Variable.Number,
                style: NumberFormat,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            width: MediaQuery.of(context).size.width,
            child: OtpTextField(
              numberOfFields: 5,
              fieldWidth: 40,

              filled: true,
              fillColor: Color(0xffF6F6F8),
              borderRadius: BorderRadius.circular(16),

              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
            ),
          ),
          SizedBox(height: 16),
          resent == false
              ? Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        Variable.YOUcanResendOTPIN0020seconds,
                        style:
                            headingBlueStyleYouwillreceiveanOTPtoverifynumber,
                        textAlign: TextAlign.center,
                      ),
                      Container(
                          height: 42,
                          margin: EdgeInsets.symmetric(vertical: 0),
                          child: SimpleTimer(
                            status: TimerStatus.start,
                            backgroundColor: Colors.white,
                            progressIndicatorColor: Colors.white,
                            duration: const Duration(seconds: 30),
                            onEnd: resend,
                            strokeWidth: 0,
                          )),
                      Text(
                        Variable.seconds,
                        style: YOUcanResendOTPIN0020seconds,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )
              : Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        Variable.DintreceiveOTPyet,
                        style:
                            headingBlueStyleYouwillreceiveanOTPtoverifynumber,
                        textAlign: TextAlign.center,
                      ),
                      TextButton(
                        onPressed: () {
                          // reverse == false
                          //     ? Container(
                          //         child: Text('c2'),
                          //       )
                          //     : Container(
                          //         child: Text('c2'),
                          //       );
                          // if (resent == false) {
                          //   showDialog(
                          //       context: context,
                          //       builder: (BuildContext context) {
                          //         return AlertDialog(
                          //           title: Text("Enter a price"),
                          //         );
                          //       });
                          // } else {
                          //   Text('c2');
                          // }
                        },
                        child: const Text('Resend',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.deepOrange,
                              fontFamily: 'Inter',
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                            )),
                      )
                    ],
                  ),
                ),
          SizedBox(height: 240),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            margin: EdgeInsets.symmetric(horizontal: 3),
            child: otpButtonLarge(
              text: 'Conform',
              onTap: () async {},
            ),
          ),
          SizedBox(height: 10)
        ]))));
  }
}

// void main() {
//   const oneSec = const Duration(seconds: 1);

//   Timer.periodic(oneSec, (Timer timer) {
//     print(
//         "Repeat task every one second"); // This statement will be printed after every one second
//   });
// }
