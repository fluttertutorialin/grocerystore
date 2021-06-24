/*
   DEVELOPED BY: KAMLESH LAKHANI
   FOR TEXT STYLE
*/

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../import_package.dart';

class AppTextStyle {
  const AppTextStyle._();

  static final TextStyle _textStyle = GoogleFonts.poppins(
      fontStyle: FontStyle.normal, fontSize: Dimens.fontSize16);

  static final TextStyle semiBoldStyle = _textStyle.copyWith(
    fontSize: Dimens.fontSize16,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle boldStyle = _textStyle.copyWith(
    fontSize: Dimens.fontSize22,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle regularStyle = GoogleFonts.poppins(fontStyle: FontStyle.normal, fontSize: Dimens.fontSize18);

  static final TextStyle buttonTextStyle = _textStyle.copyWith(fontSize: Dimens.fontSize16, color: Colors.white);
  static final TextStyle addToCartButtonTextStyle = _textStyle.copyWith(fontSize: Dimens.fontSize14, color: Colors.white);
  static final TextStyle addNewAddressButtonTextStyle = _textStyle.copyWith(fontSize: Dimens.fontSize14, color: AppColors.black);


  static final TextStyle appBarTitleStyle = _textStyle.copyWith(fontSize: Dimens.fontSize16, color: AppColors.white);

  static final TextStyle splashTitleStyle = GoogleFonts.poppins(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      color: AppColors.white,
      fontSize: Dimens.fontSize30);

  static final TextStyle textFieldStyle = GoogleFonts.poppins(fontSize: Dimens.fontSize16);

  static final TextStyle doNotHaveAccountStyle = _textStyle.copyWith(fontSize: Dimens.fontSize14);
  static final TextStyle signUpStyle = semiBoldStyle.copyWith(fontSize: Dimens.fontSize14, color: AppColors.primaryColor);

  static final TextStyle titleFormStyle = semiBoldStyle.copyWith(fontSize: Dimens.fontSize22, color: AppColors.primaryColor);
  static final TextStyle subTitleFormStyle = semiBoldStyle.copyWith(fontSize: Dimens.fontSize20, color: AppColors.primaryColor);
  static final TextStyle descriptionFormStyle = semiBoldStyle.copyWith(fontSize: Dimens.fontSize14, color: AppColors.black);

  static final TextStyle categoryHeaderStyle = boldStyle.copyWith(fontSize: Dimens.fontSize14, letterSpacing: 0.5, color: Colors.black54);
  static final TextStyle viewAllStyle = semiBoldStyle.copyWith(fontSize: Dimens.fontSize12, color: AppColors.primaryColor);
  static final TextStyle categoryNameBoldStyle = semiBoldStyle.copyWith(fontSize: Dimens.fontSize12, letterSpacing: 0.8, color: AppColors.black);
  static final TextStyle categoryNameStyle = _textStyle.copyWith(fontSize: Dimens.fontSize12, color: AppColors.black.withOpacity(0.6));
  static final TextStyle weightStyle = _textStyle.copyWith(fontSize: 10, color: AppColors.black.withOpacity(0.6));
  static final TextStyle priceStyle = boldStyle.copyWith(fontWeight: FontWeight.w500, fontSize: Dimens.fontSize12, color: AppColors.black);

  static final TextStyle titleSliderStyle = boldStyle.copyWith(fontSize: Dimens.fontSize18, letterSpacing: 0.5, color: AppColors.black);
  static final TextStyle descriptionSliderStyle = boldStyle.copyWith(fontSize: Dimens.fontSize12, letterSpacing: 0.5, color: Colors.black54);

  static final TextStyle detailTitleStyle = boldStyle.copyWith(fontSize: Dimens.fontSize14, color: AppColors.black.withOpacity(0.6));
  static final TextStyle detailCategoryNameStyle = boldStyle.copyWith(fontSize: Dimens.fontSize14, color: AppColors.black);
  static final TextStyle detailWeightStyle = _textStyle.copyWith(fontSize: Dimens.fontSize12, color: AppColors.black.withOpacity(0.6));
  static final TextStyle detailPriceStyle = _textStyle.copyWith(fontSize: Dimens.fontSize14, color: AppColors.black);
  static final TextStyle detailRattingStyle = _textStyle.copyWith(fontSize: Dimens.fontSize14, color: AppColors.white);
  static final TextStyle detailRattingTotalStyle = _textStyle.copyWith(fontSize: Dimens.fontSize12, color: AppColors.black);
  static final TextStyle companyDetailTitleStyle = _textStyle.copyWith(fontSize: Dimens.fontSize14, color: Colors.black87);
  static final TextStyle companyDetailDescriptionStyle = _textStyle.copyWith(fontSize: Dimens.fontSize14, color: AppColors.black);


  //DRAWER
  static final TextStyle drawerUserNameStyle = boldStyle.copyWith(fontSize: Dimens.fontSize14, letterSpacing: 0.5, color: AppColors.white);
  static final TextStyle drawerEmailStyle = _textStyle.copyWith(fontSize: Dimens.fontSize12, letterSpacing: 0.5, color: AppColors.white);
  static final TextStyle drawerMenuStyle = _textStyle.copyWith(fontSize: Dimens.fontSize14, letterSpacing: 0.5, color: AppColors.black);

  //MY ADDRESS
  static final TextStyle addressNameStyle = boldStyle.copyWith(fontSize: Dimens.fontSize14, letterSpacing: 0.5, color: AppColors.black);
  static final TextStyle addressTypeStyle = _textStyle.copyWith(fontSize: Dimens.fontSize14, letterSpacing: 0.5, color: Colors.blueGrey);
  static final TextStyle mobileStyle = _textStyle.copyWith(fontSize: Dimens.fontSize12, letterSpacing: 0.5, color: Colors.black54);
  static final TextStyle emailStyle = _textStyle.copyWith(fontSize: Dimens.fontSize12, letterSpacing: 0.5, color: Colors.black54);
  static final TextStyle addressStyle = _textStyle.copyWith(fontSize: Dimens.fontSize14, letterSpacing: 0.5, color: AppColors.black);
  static final TextStyle defaultAddressStyle = boldStyle.copyWith(fontSize: Dimens.fontSize12, letterSpacing: 0.5, color: AppColors.primaryColor);

  //MY ORDER
  static final TextStyle orderIdStyle = _textStyle.copyWith(fontSize: Dimens.fontSize12, letterSpacing: 0.5, color: Colors.blueGrey);
  static final TextStyle totalQuantityStyle = _textStyle.copyWith(fontSize: Dimens.fontSize12, letterSpacing: 0.5, color: AppColors.black);
  static final TextStyle deliveredByStyle = _textStyle.copyWith(fontSize: Dimens.fontSize12, letterSpacing: 0.5, color: Colors.orange);
  static final TextStyle noMoreOrderStyle = boldStyle.copyWith(fontSize: Dimens.fontSize12, letterSpacing: 0.5, color: Colors.black54);
  static final TextStyle orderHistoryStyle = boldStyle.copyWith(fontSize: Dimens.fontSize14, letterSpacing: 0.5, color: Colors.black);
  static final TextStyle deliveredByHistoryStyle = _textStyle.copyWith(fontSize: Dimens.fontSize12, letterSpacing: 0.5, color: AppColors.primaryColor);

  static final TextStyle errorTextFieldStyle = _textStyle.copyWith(fontSize: Dimens.fontSize12, color: AppColors.error);
  static final TextStyle errorStyle = _textStyle.copyWith(fontSize: Dimens.fontSize14, color: AppColors.error);
}
