// import 'dart:ui';

// ignore_for_file: missing_required_param

import 'package:flutter/material.dart';
import 'package:smart_boxy/core/core.dart';
import 'package:smart_boxy/core/utilities/image_data/image_iThinkLogistic.dart';
// import 'package:smart_boxy/core/utilities/widget_utilities/buttonCustom.dart';
import 'package:smart_boxy/core/utilities/widget_utilities/submitButtonLarge.dart';

void importalert(BuildContext context) {
  // var colorBg;
  var alertDialog = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    title: Column(
      children: [
        Container(
          child: ImageSmartBoxy(
            image: AppIconImage.contact,
          ),
        ),
        Text(
          Variable.ImportContact,
          style: Importcontact,
          textAlign: TextAlign.center,
        ),
      ],
    ),
    content: Text(Variable.Areyousure, style: Areyousure),
    actions: <Widget>[
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 120,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffF6F6F8), // Button background color
                  elevation: 0, // No shadow
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16), // Rounded corners
                  ),
                ),
                onPressed: () => Navigator.pop(context, 'Cancel'),
                child: const Text(
                  'Later',
                  style: TextStyle(
                      color: Colors.black), // Set text color if needed
                ),
              ),
            ),
            SizedBox(width: 20),
            importyesButtonlarge()
          ],
        ),
      ),
      SizedBox(height: 20),
    ],
  );
  showDialog(
      context: context,
      builder: (BuildContext comtext) {
        return alertDialog;
      });
}
