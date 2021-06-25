/*
   DEVELOPED BY: KAMLESH LAKHANI
   FOR ICON FONT
*/

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import 'theme/app_color.dart';

class IconFont {
  const IconFont._();

  // iconName: share
  static const Icon google = Icon(LineIcons.googleLogo, color: AppColors.googleRed);
  static const Icon facebook = Icon(LineIcons.facebookSquare, color: AppColors.facebookBlue);
  static const Icon passwordVisible = Icon(LineIcons.eye);
  static const Icon passwordSecure = Icon(LineIcons.eyeSlash);
  static const Icon logout = Icon(LineIcons.lock, color: AppColors.whiteIconColor);
  static const Icon notification = Icon(LineIcons.user, color: AppColors.whiteIconColor);
  static const Icon arrowCircleRight = Icon( LineIcons.arrowCircleRight);
  static const Icon heart = Icon(LineIcons.heart, size: 15);
  static const Icon addToShoppingCart = Icon(LineIcons.addToShoppingCart, color: AppColors.whiteIconColor, size: 18);
}
