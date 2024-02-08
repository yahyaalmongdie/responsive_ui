import 'package:flutter/material.dart';

class SizeConfig {
  static const double desktop = 1200;
  static const double tablet = 800;
  static const double mobile = 400;

  static late double hight, width;
// مايفضلش استخدامها  عند بناء ديسك توب لانه مابيعمل ري بلد مباشرة لازم تعمل حفظ ويفضل يتم استخدمها مباشراة في اي كلاس استيت فل
  static init(BuildContext context) {
    hight = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
  }
}
