import '../../controller/controller_package.dart' show ChangePasswordController;
import '../widget/custom_text_field_widget.dart';
import '../../import_package.dart';

class ChangePasswordPage extends GetWidget<ChangePasswordController> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) => Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
                  padding: EdgeInsets.all(15.sp),
                  child:  Form(
                      key: formKey,
                      child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 120.h),
                        _headerChangePassword(ValueString.emailDeveloperApp),
                        SizedBox(height: 40.h),
                        CustomTextFieldWidget(
                            controller: controller.passwordController,
                            validator: controller.passwordValidation,
                            onChanged: controller.setPassword,
                            obscureText: true,
                            suffixIcon: IconFont.passwordSecure,
                            maxLength: ValueString.passwordLength,
                            labelText: ValueString.newPasswordFormLabel),
                        SizedBox(height: 20.h),
                        CustomTextFieldWidget(
                            controller: controller.passwordController,
                            validator: controller.passwordValidation,
                            onChanged: controller.setPassword,
                            obscureText: true,
                            suffixIcon: IconFont.passwordSecure,
                            maxLength: ValueString.passwordLength,
                            labelText: ValueString.newConfirmPasswordFormLabel),
                        SizedBox(height: 20.h),
                        CustomTextFieldWidget(
                            controller: controller.passwordController,
                            validator: controller.passwordValidation,
                            onChanged: controller.setPassword,
                            obscureText: true,
                            suffixIcon: IconFont.passwordSecure,
                            maxLength: ValueString.passwordLength,
                            labelText: ValueString.currentPasswordFormLabel),
                        SizedBox(height: 10.h),
                        Container(
                            padding: EdgeInsets.all(10),
                            child: TextButton(
                                child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: Center(
                                        child: Text('Update password',
                                            style:
                                            AppTextStyle.buttonTextStyle))),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        AppColors.primaryColor)),
                                onPressed: () => Get.offAllNamed(AppRoute.HOME)))
                      ]))))));

  _headerChangePassword(String? email) =>
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('Change password', style: AppTextStyle.titleFormStyle),
        SizedBox(height: 10.h),
        Text('Your new password must be different from previous used password.',
            style: AppTextStyle.otpDescriptionStyle)
      ]);
}