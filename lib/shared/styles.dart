import 'package:flutter/material.dart';

const Color whiteColor = Colors.white;
const Color blackColor = Colors.black;
const Color transparentColor = Colors.transparent;
const Color yellowColor = Color.fromRGBO(255, 213, 39, 1);
const Color shadowColor = Color.fromRGBO(0, 0, 0, 0.4);
const Color footerColor = Color.fromRGBO(255, 255, 255, 0.7);

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

TextStyle poppinsFont18ptSemibold({Color color = blackColor}) => TextStyle(
    fontFamily: poppinsFont,
    fontSize: 20,
    color: color,
    fontWeight: semiboldFont);

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

TextStyle poppinsFont20ptSemibold = TextStyle(
  fontFamily: poppinsFont,
  fontSize: 20,
  fontWeight: semiboldFont,
);

TextStyle poppinsFont12pt({Color color = blackColor}) => TextStyle(
    fontFamily: poppinsFont,
    fontSize: 12,
    color: color,
    fontWeight: normalFont);
