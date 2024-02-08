import 'package:flutter/material.dart';
import 'package:responcive_dashboard/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular16(context) {
    return TextStyle(
        color: const Color(0xFF064060),
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w400);
  }
  static  TextStyle styleMedium16(context) {
    return TextStyle(
        color: const Color(0xFF064060),
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w500);
  }

  static TextStyle styleMedium20(context) {
    return TextStyle(
        color: const Color(0xFFFFFFFF),
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w500);
  }

  static TextStyle styleSemiBold16(context) {
    return TextStyle(
        color: const Color(0xFF064060),
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w600);
  }

  static TextStyle styleSemiBold20(context) {
    return TextStyle(
        color: const Color(0xFF064060),
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w600);
  }

  static TextStyle styleRegular12(context) {
    return TextStyle(
        color: const Color(0xFFAAAAAA),
        fontSize: getResponsiveFontSize(context, fontSize: 12),
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w400);
  }

  static TextStyle styleSemiBold24(context) {
    return TextStyle(
        color: const Color(0xFF4EB7F2),
        fontSize: getResponsiveFontSize(context, fontSize: 24),
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w600);
  }

  static TextStyle styleRegular14(context) {
    return TextStyle(
        color: const Color(0xFFAAAAAA),
        fontSize: getResponsiveFontSize(context, fontSize: 14),
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w400);
  }

  static TextStyle styleSemiBold18(context) {
    return TextStyle(
        color: const Color(0xFFFFFFFF),
        fontSize: getResponsiveFontSize(context, fontSize: 18),
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w600);
  }

  static TextStyle styleBold16(context) {
    return TextStyle(
        color: const Color(0xFF4EB7F2),
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w700);
  }

}

double getResponsiveFontSize(context, {required double fontSize}) {
  //scale factor == depend on platform
  double scaleFactor = getScaleFactor(context);
  //responsive font size
  double responsiveFontSize = fontSize * scaleFactor;
  //(min,max)font size
  //ضرب في اي قيمة تريدها بمايناسب التصميم حقك
  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  //scale factor == depend on platform

//بديل الميديا كويري
//لايفضل استخدامها عند تصميم على الويب لان التحديث مايكون ظاهر مباشر
// var disPatcher=PlatformDispatcher.instance;
// var physicalWidth=disPatcher.views.first.physicalSize.width;
// var devicePixelRiot=disPatcher.views.first.physicalSize.width;
// var width=physicalWidth/devicePixelRiot;

  var width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
