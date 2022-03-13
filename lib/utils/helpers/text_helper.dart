import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lmsadminpanle/utils/constants/font_manager.dart';

Text textStyle0_5(String title, TextAlign textAlign, Color color) {
  return Text(
    title,
    textAlign: textAlign,
    style: GoogleFonts.openSans(
      fontSize: FontSize.s10,
      color: color,
      fontWeight: FontWeightManager.regular,
    ),
  );
}

Text textStyle1(String title, TextAlign textAlign, Color color) {
  return Text(
    title,
    textAlign: textAlign,
    style: GoogleFonts.openSans(
      fontSize: FontSize.s14,
      color: color,
      fontWeight: FontWeightManager.light,
    ),
  );
}

Text textStyle1_5(String title, TextAlign textAlign, Color color) {
  return Text(
    title,
    textAlign: textAlign,
    style: GoogleFonts.openSans(
      fontSize: FontSize.s14,
      color: color,
      fontWeight: FontWeightManager.regular,
      decoration: TextDecoration.underline,
    ),
  );
}

Text textStyle2(String title, TextAlign textAlign, Color color) {
  return Text(
    title,
    textAlign: textAlign,
    style: GoogleFonts.openSans(
      fontSize: FontSize.s16,
      color: color,
      fontWeight: FontWeightManager.regular,
    ),
  );
}

Text textStyle3(String title, TextAlign textAlign, Color color) {
  return Text(
    title,
    textAlign: textAlign,
    style: GoogleFonts.openSans(
      fontSize: FontSize.s18,
      color: color,
      fontWeight: FontWeightManager.medium,
    ),
  );
}

Text textStyle3_1(String title, TextAlign textAlign, Color color) {
  return Text(
    title,
    textAlign: textAlign,
    style: GoogleFonts.openSans(
      fontSize: FontSize.s18,
      color: color,
      letterSpacing: 2,
      fontWeight: FontWeightManager.medium,
    ),
  );
}

Text textStyle4(String title, TextAlign textAlign, Color color) {
  return Text(
    title,
    textAlign: textAlign,
    style: GoogleFonts.openSans(
      fontSize: FontSize.s20,
      color: color,
      fontWeight: FontWeightManager.semiBold,
    ),
  );
}

Text textStyle5(String title, TextAlign textAlign, Color color) {
  return Text(
    title,
    textAlign: textAlign,
    style: GoogleFonts.openSans(
      fontSize: FontSize.s22,
      color: color,
      fontWeight: FontWeightManager.bold,
    ),
  );
}

Text textStyle6(String title, TextAlign textAlign, Color color) {
  return Text(
    title,
    textAlign: textAlign,
    style: GoogleFonts.openSans(
      fontSize: FontSize.s24,
      color: color,
      fontWeight: FontWeightManager.extraBold,
    ),
  );
}

Text textStyle7(String title, TextAlign textAlign, Color color) {
  return Text(
    title,
    textAlign: textAlign,
    style: GoogleFonts.openSans(
      fontSize: FontSize.s30,
      color: color,
      fontWeight: FontWeightManager.extraBold,
    ),
  );
}
