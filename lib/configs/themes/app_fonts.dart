import 'package:flashlight_cashier/configs/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  //* Font Styles
  static TextStyle poppinsTextStyle = GoogleFonts.poppins(
    color: AppColors.lightBackground,
  );

  static TextStyle quickSandTextStyle = GoogleFonts.quicksand(
    color: AppColors.lightBackground,
  );
}

//* Font Weight
const FontWeight light = FontWeight.w300; // Light
const FontWeight regular = FontWeight.w400; // Regular
const FontWeight medium = FontWeight.w500; // Medium
const FontWeight semiBold = FontWeight.w600; // Semibold
const FontWeight bold = FontWeight.w700; // Bold
const FontWeight extraBold = FontWeight.w800; // Extrabold
const FontWeight black = FontWeight.w900; // Black
