import 'package:flutter/material.dart';

const Color whiteColor = Colors.white;
const Color blackColor = Colors.black;
const Color transparentColor = Colors.transparent;
const Color yellowColor = Color.fromRGBO(255, 213, 39, 1);

const String poppinsFont = 'Poppins';

const FontWeight boldFont = FontWeight.bold;
const FontWeight semiboldFont = FontWeight.w600;
const FontWeight normalFont = FontWeight.normal;

TextStyle poppinsFont90ptBoldBlack = TextStyle(
    fontFamily: poppinsFont,
    fontSize: 90,
    color: blackColor,
    fontWeight: boldFont,
    letterSpacing: 5);

TextStyle poppinsFont48ptSemiboldBlack = TextStyle(
    fontFamily: poppinsFont,
    fontSize: 48,
    color: blackColor,
    fontWeight: semiboldFont);

TextStyle poppinsFont16ptBlack = TextStyle(
    fontFamily: poppinsFont,
    fontSize: 16,
    color: blackColor,
    fontWeight: semiboldFont);

TextStyle poppinsFont20ptSemibold = TextStyle(
  fontFamily: poppinsFont,
  fontSize: 20,
  fontWeight: semiboldFont,
);

TextStyle poppinsFont12ptBlack = TextStyle(
    fontFamily: poppinsFont,
    fontSize: 12,
    color: blackColor,
    fontWeight: normalFont);
