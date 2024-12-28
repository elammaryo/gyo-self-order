import 'package:flutter/material.dart';

const Color whiteColor = Colors.white;
const Color blackColor = Colors.black;
const Color transparentColor = Colors.transparent;
const Color yellowColor = Color.fromRGBO(255, 213, 39, 1);

const String poppinsFont = 'Poppins';

const FontWeight boldFont = FontWeight.bold;
const FontWeight semiboldFont = FontWeight.w600;

TextStyle poppinsFont72ptBoldBlack = TextStyle(
    fontFamily: poppinsFont,
    fontSize: 72,
    color: blackColor,
    fontWeight: boldFont,
    letterSpacing: 5);

TextStyle poppinsFont48ptSemiboldBlack = TextStyle(
    fontFamily: poppinsFont,
    fontSize: 48,
    color: blackColor,
    fontWeight: semiboldFont);
