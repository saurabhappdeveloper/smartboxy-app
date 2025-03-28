import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:smart_boxy/module/Address/views/address.dart';

import '../../core.dart';

final headingBlueStyle = TextStyle(
  fontFamily: 'Gilroy-Bold',
  color: Color.fromRGBO(35, 35, 64, 1),
  fontSize: 28,
  fontStyle: FontStyle.normal,
  letterSpacing: 0,
);
final headingBlueStyleAnalytics = TextStyle(
  fontFamily: 'Gilroy-Bold',
  color: Color.fromRGBO(35, 35, 64, 1),
  fontSize: 22,
  fontWeight: FontWeight.w600,
  fontStyle: FontStyle.normal,
  letterSpacing: 0,
);
final country_code_style = TextStyle(
    color: Colors.black,
    fontFamily: 'Inter',
    fontSize: 16,
    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
    fontWeight: FontWeight.normal,
    height: 1);
final smallGreyStyle = TextStyle(
  fontWeight: FontWeight.w400,
  color: greyColor,
  fontSize: 17,
);
final headingBlueStyle10digitnumber = TextStyle(
  fontFamily: 'Inter',
  color: Color(0xff172b4d),
  fontSize: 14,
  fontWeight: FontWeight.w400,
  fontStyle: FontStyle.normal,
  letterSpacing: 0,
);

final NumberFormat = TextStyle(
  fontFamily: 'Inter',
  color: Colors.deepOrange,
  fontSize: 14,
  fontWeight: FontWeight.w400,
  fontStyle: FontStyle.normal,
  letterSpacing: 0,
);
final YOUcanResendOTPIN0020seconds = TextStyle(
  fontFamily: 'Inter',
  color: Color(0xff73738C),
  fontSize: 14,
  fontWeight: FontWeight.w500,
  fontStyle: FontStyle.normal,
  letterSpacing: 0,
);
final resendotp = TextStyle(
  fontFamily: 'Inter',
  color: Colors.deepOrange,
  fontSize: 14,
  fontWeight: FontWeight.w600,
  fontStyle: FontStyle.normal,
  letterSpacing: 0,
);
final Soniya = TextStyle(
  fontFamily: 'Inter',
  color: Color(0xff232340),
  fontSize: 14,
  fontWeight: FontWeight.w600,
  fontStyle: FontStyle.normal,
  letterSpacing: 0,
);

final Importcontact = TextStyle(
  fontFamily: 'Inter',
  color: Color(0xff232340),
  fontSize: 16,
  fontWeight: FontWeight.w600,
  fontStyle: FontStyle.normal,
  letterSpacing: 0,
);

final Areyousure = TextStyle(
  fontFamily: 'Inter',
  color: Color(0xff73738C),
  fontSize: 13,
  fontWeight: FontWeight.w600,
  fontStyle: FontStyle.normal,
  letterSpacing: 0,
);

final Soniyaaddress = TextStyle(
  fontFamily: 'Inter',
  color: Color(0xff73738C),
  fontSize: 12,
  fontWeight: FontWeight.normal,
  fontStyle: FontStyle.normal,
  letterSpacing: 0,
);

final headingBlueStyleYouwillreceiveanOTPtoverifynumber = TextStyle(
  fontFamily: 'Inter',
  color: Color(0xff73738C),
  fontSize: 14,
  fontWeight: FontWeight.w400,
  fontStyle: FontStyle.normal,
  letterSpacing: 0,
);

final ShaktiNiwasstationroad= TextStyle(
  fontFamily: 'Inter',
  color: Color(0xff73738C),
  fontSize: 14,
  fontWeight: FontWeight.w400,
  fontStyle: FontStyle.normal,
  letterSpacing: 0,
);

final HomeShopCustom= TextStyle(
  fontFamily: 'Inter',
  color: Color(0xff232340),
  fontSize: 14,
  fontWeight: FontWeight.w600,
  fontStyle: FontStyle.normal,
  letterSpacing: 0,
);

final smallBlueDarkStyle = TextStyle(
  fontFamily: 'Rubik',
  color: Color(0xff5e6c84),
  fontSize: 17,
  fontWeight: FontWeight.w400,
  fontStyle: FontStyle.normal,
  letterSpacing: 0,
);

final smallWhiteStyle = TextStyle(
  fontWeight: FontWeight.w600,
  color: Colors.white,
  fontSize: 17,
);

final smallLightGreyStyle = TextStyle(
  fontWeight: FontWeight.w600,
  color: greyLittleColor,
  fontSize: 15,
);

final miniDarkBlueStyle = TextStyle(
  fontWeight: FontWeight.w600,
  color: greyLittleColor,
  fontSize: 15,
);

final smallBlueStyle = TextStyle(
  fontWeight: FontWeight.w400,
  color: darkColor,
  fontSize: 17,
);

final borderNone = InputDecoration(
  border: InputBorder.none,
  disabledBorder: InputBorder.none,
  focusedBorder: InputBorder.none,
  enabledBorder: InputBorder.none,
  focusedErrorBorder: InputBorder.none,
  errorBorder: InputBorder.none,
);

final boldStyle = TextStyle(
  fontFamily: 'Rubik',
  color: Color(0xff344563),
  fontSize: 16,
  fontWeight: FontWeight.w700,
  fontStyle: FontStyle.normal,
  letterSpacing: 0,
);

final miniStyle = TextStyle(
  fontFamily: 'Rubik',
  color: Color(0xff344563),
  fontSize: 13,
  fontWeight: FontWeight.w400,
  fontStyle: FontStyle.normal,
  letterSpacing: 0,
);

final normalStyle = TextStyle(
  fontFamily: 'Rubik',
  color: Color(0xff344563),
  fontSize: 15,
  fontWeight: FontWeight.w400,
  fontStyle: FontStyle.normal,
  letterSpacing: 0,
);

final normalRedStyle = TextStyle(
  fontFamily: 'Rubik',
  color: Color(0xffde350b),
  fontSize: 15,
  fontWeight: FontWeight.w400,
  fontStyle: FontStyle.normal,
  letterSpacing: 0,
);

final smallRedStyle = TextStyle(
  fontFamily: 'Rubik',
  color: Color(0xffde350b),
  fontSize: 12.7,
  fontWeight: FontWeight.w400,
  fontStyle: FontStyle.normal,
  letterSpacing: 0,
);

final normalGreyStyle = TextStyle(
  fontFamily: 'Rubik',
  color: Color(0xff5e6c84),
  fontSize: 15,
  fontWeight: FontWeight.w400,
  fontStyle: FontStyle.normal,
  letterSpacing: 0,
);
final topAddress = TextStyle(
  fontFamily: 'Gilroy',
  color: Color(0xff232340),
  fontSize: 24,
  fontWeight: FontWeight.w700,
  fontStyle: FontStyle.normal,
  letterSpacing: 0,
);
final goregoanwest = TextStyle(
  fontFamily: 'Inter',
  color: Color(0xff3C3C58),
  fontSize: 16,
  fontWeight: FontWeight.w600,
  fontStyle: FontStyle.normal,
  letterSpacing: 0,
);

final topimport = TextStyle(
  fontFamily: 'Inter',
  color: Color(0xffFB4F1D),
  fontSize: 16,
  fontWeight: FontWeight.w600,
  fontStyle: FontStyle.normal,
  letterSpacing: 0.2,
);

final Change = TextStyle(
  fontFamily: 'Inter',
  color: Color(0xffFB4F1D),
  fontSize: 14,
  fontWeight: FontWeight.w500,
  fontStyle: FontStyle.normal,
  letterSpacing: 0,
);


final adddropaddress = TextStyle(
  fontFamily: 'Shapiro',
  color: Color(0xff232340),
  fontSize: 24,
  fontWeight: FontWeight.w900,
  fontStyle: FontStyle.normal,
  letterSpacing: 0.02,
);

final blackestyle = TextStyle(
  fontFamily: 'Inter',
  color: Color(0xff73738C),
  fontSize: 13,
  fontWeight: FontWeight.w600,
  fontStyle: FontStyle.normal,
  letterSpacing: 0,
);
final Orangestyle = TextStyle(
  fontFamily: 'Inter',
  color: Color(0xffFB4F1D),
  fontSize: 13,
  fontWeight: FontWeight.w600,
  fontStyle: FontStyle.normal,
  letterSpacing: 0,
);

final normalBlueStyle = TextStyle(
  fontFamily: 'Rubik',
  color: Color(0xff0052cc),
  fontSize: 15,
  fontWeight: FontWeight.w400,
  fontStyle: FontStyle.normal,
  letterSpacing: 0,
);
normalGilroySize({double fontSize, Color color}) {
  return fontRubikSize(
      fontSize: fontSize, color: color, fontWeight: FontWeight.w400);
}

fontGilroySize({double fontSize, Color color, FontWeight fontWeight}) {
  return TextStyle(
    fontFamily: 'NotoSansJP',
    color: color,
    fontSize: fontSize,
    fontWeight: fontWeight,
    fontStyle: FontStyle.normal,
    letterSpacing: 0,
  );
}

normalRubikSize({double fontSize, Color color}) {
  return fontRubikSize(
    fontSize: fontSize,
    color: color,
    fontWeight: FontWeight.w400,
    fontFamily: 'Inner',
  );
}

fontRubikSize(
    {double fontSize, Color color, FontWeight fontWeight, String fontFamily}) {
  return TextStyle(
    fontFamily: fontFamily,
    color: color,
    fontSize: fontSize,
    fontWeight: fontWeight,
    fontStyle: FontStyle.normal,
    letterSpacing: 0,
  );
}

normalRubikSize_new({double fontSize, Color color}) {
  return fontRubikSize_new(
    fontSize: fontSize,
    color: color,
    fontWeight: FontWeight.w600,
    fontFamily: 'Inner',
  );
}

fontRubikSize_new(
    {double fontSize, Color color, FontWeight fontWeight, String fontFamily}) {
  return TextStyle(
    fontFamily: fontFamily,
    color: color,
    fontSize: fontSize,
    fontWeight: fontWeight,
    fontStyle: FontStyle.normal,
    letterSpacing: 0,
  );
}

normalProTextSize({double fontSize, Color color}) {
  return fontProTextSize(
      fontSize: fontSize, color: color, fontWeight: FontWeight.w400);
}

fontProTextSize({double fontSize, Color color, FontWeight fontWeight}) {
  return TextStyle(
    fontFamily: 'Rubik',
    color: color,
    fontSize: fontSize,
    fontWeight: fontWeight,
    fontStyle: FontStyle.normal,
    letterSpacing: 0,
  );
}

normalMontserratSize({double fontSize, Color color}) {
  return fontMontserratSize(
      fontSize: fontSize, color: color, fontWeight: FontWeight.w400);
}

fontMontserratSize({double fontSize, Color color, FontWeight fontWeight}) {
  return TextStyle(
    fontFamily: 'Gilroy-Bold',
    color: color,
    fontSize: fontSize,
    fontWeight: fontWeight,
    fontStyle: FontStyle.normal,
    letterSpacing: 0,
  );
}

normalSFProSize({double fontSize, Color color}) {
  return fontMontserratSize(
      fontSize: fontSize, color: color, fontWeight: FontWeight.w400);
}

fontSFProSize({double fontSize, Color color, FontWeight fontWeight}) {
  return TextStyle(
    fontFamily: 'SF Pro Display',
    color: color,
    fontSize: fontSize,
    fontWeight: fontWeight,
    fontStyle: FontStyle.normal,
    letterSpacing: 0,
  );
}
