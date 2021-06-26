/*
   DEVELOPED BY: KAMLESH LAKHANI

   autofillHints: const [AutofillHints.password],
   autovalidateMode: AutovalidateMode.onUserInteraction

    autofillHints: const [AutofillHints.email],
    autovalidateMode: AutovalidateMode.onUserInteraction,
*/

import 'package:pinput/pin_put/pin_put.dart';
import '../../import_package.dart';

class OTPPage extends StatelessWidget {
  final _pinPutController = TextEditingController();
  final _pinPutFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) => Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
                  padding: EdgeInsets.all(15.sp),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 120.h),
                        _headerOTP(ValueString.emailDeveloperApp),
                        SizedBox(height: 40.h),
                        _pinCodeWidget(),
                        SizedBox(height: 10.h),
                        Container(
                            padding: EdgeInsets.all(10),
                            child: TextButton(
                                child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: Center(
                                        child: Text('Continue',
                                            style:
                                                AppTextStyle.buttonTextStyle))),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        AppColors.primaryColor)),
                                onPressed: () => Get.offAllNamed(AppRoute.HOME))),
                        SizedBox(height: 10.h),
                        Center(
                            child: Text('This session will end in 20 seconds.',
                                style: AppTextStyle.otpSessionEndStyle)),
                        SizedBox(height: 5.h),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Didn't get code? ",
                                  style: AppTextStyle.doNotHaveAccountStyle),
                              GestureDetector(
                                  onTap: () {},
                                  child: Text(' Resend Code ',
                                      style: AppTextStyle.signUpStyle))
                            ])
                      ])))));

  _headerOTP(String? email) =>
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('Verify Account', style: AppTextStyle.titleFormStyle),
        SizedBox(height: 10.h),
        Text('Enter 6 - digit code we have sent at',
            style: AppTextStyle.otpDescriptionStyle),
        SizedBox(height: 3.h),
        Text(email!.toLowerCase(), style: AppTextStyle.otpSentEmailStyle),
      ]);

  _pinCodeWidget() => PinPut(
      useNativeKeyboard: true,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      withCursor: true,
      fieldsCount: 6,
      fieldsAlignment: MainAxisAlignment.spaceAround,
      textStyle: const TextStyle(fontSize: 20.0, color: Colors.black),
      eachFieldMargin: EdgeInsets.all(0),
      eachFieldWidth: 45.0,
      eachFieldHeight: 55.0,
      onSubmit: (String value) {},
      focusNode: _pinPutFocusNode,
      controller: _pinPutController,
      submittedFieldDecoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.circular(10.0)),
      selectedFieldDecoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(10.0))
          .copyWith(
              color: Colors.white,
              border: Border.all(width: 1.5, color: AppColors.primaryColor)),
      followingFieldDecoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.circular(10.0)),
      pinAnimationType: PinAnimationType.scale);
}
