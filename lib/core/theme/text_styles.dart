import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';
import 'font_weight_helper.dart';

class TextStyles {
  static TextStyle font17WhiteSemiBoldNunitoSans = GoogleFonts.nunitoSans(
    fontSize: 17.31.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: Colors.white,
  );
  static TextStyle font6WhiteSemiBoldNunitoSans = GoogleFonts.nunitoSans(
    fontSize: 6.31.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: Colors.white,
  );
  static TextStyle font9WhiteSemiBoldNunitoSans = GoogleFonts.nunitoSans(
    fontSize: 9.31.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: Colors.white,
  );
  static TextStyle font11GrayStoneRegularNunitoSans = GoogleFonts.nunitoSans(
    fontSize: 11.54.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.grayStone,
  );
  static TextStyle font10LimePastelRegularNunitoSans = GoogleFonts.nunitoSans(
    fontSize: 10.69.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.limePastel,
  );
  static TextStyle font13WhiteBoldPoppins = GoogleFonts.poppins(
    fontSize: 13.46.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.white,
  );
  static TextStyle font14WhiteBoldPoppins = GoogleFonts.poppins(
    fontSize: 14.54.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.white,
  );
  static TextStyle font12WhiteMediumPoppins = GoogleFonts.poppins(
    fontSize: 12.61.sp,
    fontWeight: FontWeightHelper.medium,
    color: Colors.white,
  );
  static TextStyle font10WhiteRegularPoppins = GoogleFonts.poppins(
    fontSize: 10.61.sp,
    fontWeight: FontWeightHelper.regular,
    color: Colors.white,
  );
}
