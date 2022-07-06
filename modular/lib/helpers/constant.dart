import 'package:flutter/material.dart';

enum PhoneScreen {
  normal,
  small,
  large,
}

class MyImages {
  MyImages._();

  static const String vectorMen = 'assets/images/background_vector_men.png';
  static const String vectorWomen = 'assets/images/background_vector_woman.png';
  static const String vectorPlain = 'assets/images/background_vector_plain.png';
  static const String bankAAA = 'assets/images/ic_bankAAA.png';
  static const String bankBBB = 'assets/images/ic_bankBBB.png';
  static const String bankCCC = 'assets/images/ic_bankCCC.png';
  static const String bankDDD = 'assets/images/ic_bankDDD.png';
  static const String languageId = 'assets/images/language_id.png';
  static const String infoYellow = 'assets/images/eva_info-fill.png';
}

class ScreenSize {
  PhoneScreen phoneScreen = PhoneScreen.normal;
  PhoneScreen getPhoneSize(BuildContext context) {
    if (MediaQuery.of(context).size.height < 600 &&
        MediaQuery.of(context).size.width < 330) {
      phoneScreen = PhoneScreen.small;
    } else if (MediaQuery.of(context).size.height > 860 ||
        MediaQuery.of(context).size.width > 400) {
      phoneScreen = PhoneScreen.large;
    } else {
      phoneScreen = PhoneScreen.normal;
    }
    return phoneScreen;
  }

  double getPhoneWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}

class MyColors {
  MyColors._();

  static const Color black = Color.fromRGBO(0, 0, 0, 1);
  static const Color white = Color.fromRGBO(255, 255, 255, 1);
  static const Color darkGray = Color.fromRGBO(100, 100, 100, 1);
  static const Color lightGray = Color.fromRGBO(180, 180, 180, 1);
  static const Color primaryText = Color.fromRGBO(44, 119, 164, 1);
  static const Color yellowText = Color.fromRGBO(255, 176, 56, 1);
  static const Color blueTransparent = Color.fromRGBO(220, 242, 255, 1);
  static const Color blue = Color.fromRGBO(220, 242, 255, 0.53);
  static const Color dim = Color.fromRGBO(0, 0, 0, 0.5);
  static const Color blueTransparentTextField =
      Color.fromRGBO(20, 108, 189, 0.15);
  static const Color blueLightTransparent = Color.fromRGBO(245, 252, 255, 1);
  static const Color darkBlue = Color.fromRGBO(44, 119, 164, 1);
  static const Color mbBlue = Color.fromRGBO(31, 55, 93, 1.0);
  static const Color wideBlue = Color.fromRGBO(72, 86, 154, 1);
  static const Color pinBlue = Color.fromRGBO(44, 119, 164, 1);
  static const Color greenTransparent = Color.fromRGBO(78, 202, 176, 0.16);
  static const Color red = Color.fromRGBO(209, 19, 19, 1);
  static const Color green = Color.fromRGBO(0, 172, 48, 1);
}

class MyFontFamily {
  MyFontFamily._();

  static const String openSans = 'OpenSans';
  static const String mulish = 'Mulish';
}

class MyFontSize {
  MyFontSize._();

  static const double smallest = 9;
  static const double small = 11;
  static const double medium = 13;
  static const double standard = 16;
  static const double big = 18;
  static const double large = 20;
  static const double extraLarge = 24;
  static const double giant = 30;

  static const double titleSize = extraLarge;
  static const double buttonTextSize = extraLarge;
  static const double receiptFontSize = 12.5;
}