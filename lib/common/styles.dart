import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color mainColor = Color(0xFF84CC16);
const Color accentColor1 = Color(0xFFA3E635);
const Color accentColor2 = Color(0xFFECFCCB);
const Color accentColor3 = Color(0xFFF7FEE7);
const Color whiteColor = Color(0xFFFFFFFF);
const Color blackColor = Color(0xFF000000);

double defaultMargin = 24;

TextStyle blackTextFont = GoogleFonts.sourceSerifPro().copyWith(
  color: blackColor,
);
TextStyle whiteTextFont = GoogleFonts.sourceSerifPro().copyWith(
  color: whiteColor,
);
TextStyle greyTextFont = GoogleFonts.sourceSerifPro().copyWith(
  color: const Color(0xFF3F3F46),
);
TextStyle grrenTextFont = GoogleFonts.sourceSerifPro().copyWith(
  color: const Color(0xFFECFCCB),
);

FontWeight light = FontWeight.w300;
FontWeight reguler = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
