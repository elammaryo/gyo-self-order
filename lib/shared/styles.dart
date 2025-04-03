import 'package:flutter/material.dart';

const Color whiteColor = Colors.white;
const Color blackColor = Colors.black;
const Color transparentColor = Colors.transparent;
const Color yellowColor = Color.fromRGBO(255, 213, 39, 1);
const Color backgroundOrange = Color.fromRGBO(255, 197, 95, 1);
const Color buttonBeige = Color.fromRGBO(255, 250, 241, 1);
const Color shadowColor = Color.fromRGBO(0, 0, 0, 0.4);
const Color footerColor = Color.fromRGBO(255, 255, 255, 0.7);
const Color appBarColor = Color.fromRGBO(255, 229, 187, 1);
const Color redColor = Color.fromRGBO(235, 64, 52, 1);

// Greys
const Color grey33 = Color.fromRGBO(33, 33, 33, 1);
const Color grey60 = Color.fromRGBO(60, 60, 60, 1);

// Color Gradients
LinearGradient orangeGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color.fromRGBO(255, 216, 155, 1), // light warm peachy-orange
    Color.fromRGBO(255, 166, 66, 1), // rich, soft orange
  ],
);

LinearGradient cafeBackgroundGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color.fromRGBO(240, 215, 190, 1), // Soft peach beige
    Color.fromRGBO(230, 190, 160, 1), // Deeper warm tan
    Color.fromRGBO(215, 170, 135, 1), // Muted terracotta base
  ],
);

const String poppinsFont = 'Poppins';

const FontWeight boldFont = FontWeight.bold;
const FontWeight semiboldFont = FontWeight.w600;
const FontWeight normalFont = FontWeight.normal;

TextStyle poppinsFont90ptBold({Color color = blackColor, shadows}) => TextStyle(
    fontFamily: poppinsFont,
    fontSize: 90,
    color: color,
    fontWeight: boldFont,
    shadows: shadows,
    letterSpacing: 5);

TextStyle poppinsFont48ptSemibold({Color color = blackColor}) => TextStyle(
    fontFamily: poppinsFont,
    fontSize: 48,
    color: color,
    fontWeight: semiboldFont);

TextStyle poppinsFont40ptSemibold({Color color = blackColor}) => TextStyle(
    fontFamily: poppinsFont,
    fontSize: 40,
    color: color,
    fontWeight: semiboldFont);

TextStyle poppinsFont30ptSemibold({Color color = blackColor}) => TextStyle(
    fontFamily: poppinsFont,
    fontSize: 30,
    color: color,
    fontWeight: semiboldFont);

TextStyle poppinsFont18ptSemibold({Color color = blackColor}) => TextStyle(
    fontFamily: poppinsFont,
    fontSize: 18,
    color: color,
    fontWeight: semiboldFont);

TextStyle poppinsFont16pt({Color color = blackColor}) => TextStyle(
    fontFamily: poppinsFont,
    fontSize: 16,
    color: color,
    fontWeight: normalFont);

TextStyle poppinsFont16ptSemibold({Color color = blackColor}) => TextStyle(
    fontFamily: poppinsFont,
    fontSize: 16,
    color: color,
    fontWeight: semiboldFont);

TextStyle poppinsFont20ptBoldWhite = TextStyle(
    fontFamily: poppinsFont,
    fontSize: 20,
    color: whiteColor,
    fontWeight: semiboldFont);

TextStyle poppinsFont20ptSemibold({Color color = blackColor}) => TextStyle(
      fontFamily: poppinsFont,
      fontSize: 20,
      color: color,
      fontWeight: semiboldFont,
    );

TextStyle poppinsFont12pt({Color color = blackColor}) => TextStyle(
    fontFamily: poppinsFont,
    fontSize: 12,
    color: color,
    fontWeight: normalFont);
