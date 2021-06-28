/*
   DEVELOPED BY: KAMLESH LAKHANI

   autofillHints: const [AutofillHints.password],
   autovalidateMode: AutovalidateMode.onUserInteraction

    autofillHints: const [AutofillHints.email],
    autovalidateMode: AutovalidateMode.onUserInteraction,
*/

import '../../controller/controller_package.dart' show LoginController;
import '../widget/custom_text_field_widget.dart';
import '../widget/stagger_animation.dart';
import '../../import_package.dart';

class LoginPage extends StatelessWidget {
  //VALIDATION USE
  final formKey = GlobalKey<FormState>();
  final controller = Get.put(LoginController(), tag: 'loginController');

  @override
  Widget build(BuildContext context) => Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
                  padding: EdgeInsets.all(15.sp),
                  child: Form(
                      key: formKey,
                      child: Column(children: [
                        SizedBox(height: 120.h),
                        _headerLogin(),
                        SizedBox(height: 40.h),

                        //EMAIL AND PASSWORD
                        CustomTextFieldWidget(
                            controller: controller.emailController,
                            validator: controller.emailValidation,
                            onChanged: controller.setEmail,
                            maxLength: ValueString.emailLength,
                            labelText: ValueString.emailFormLabel),
                        SizedBox(height: 15.h),
                        CustomTextFieldWidget(
                            controller: controller.passwordController,
                            validator: controller.passwordValidation,
                            onChanged: controller.setPassword,
                            obscureText: true,
                            suffixIcon: IconFont.passwordSecure,
                            maxLength: ValueString.passwordLength,
                            labelText: ValueString.passwordFormLabel),
                        SizedBox(height: 20.h),

                        //LOGIN ANIMATION BUTTON
                        StaggerAnimation(
                            key: const Key('loginSubmitButton'),
                            titleButton: ValueString.loginButton,
                            buttonController: controller.loginButtonController,
                            onTap: () {
                              if (formKey.currentState!.validate()) {
                                formKey.currentState!.save();
                                controller.loginResponseAPI((loading) {
                                  if (loading) {
                                    controller.loginButtonController.forward();
                                  } else {
                                    controller.loginButtonController.reverse();
                                  }
                                });
                              }
                            }),
                        SizedBox(height: 40.h),

                        //SOCIAL LOGIN (GOOGLE, FACEBOOK)
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                  borderRadius: BorderRadius.circular(25.0),
                                  onTap: () => controller.loginGoogle(
                                      success: (user) {},
                                      fail: (error) {
                                        print(error);
                                      }),
                                  child: CircleAvatar(
                                      backgroundColor:
                                          AppColors.googleRed.withOpacity(0.2),
                                      child: IconFont.google)),
                              SizedBox(width: 20.h),
                              InkWell(
                                  borderRadius: BorderRadius.circular(25.0),
                                  onTap: () => controller.loginGoogle(
                                      success: (user) {},
                                      fail: (error) {
                                        print(error);
                                      }),
                                  child: CircleAvatar(
                                      backgroundColor: AppColors.facebookBlue
                                          .withOpacity(0.2),
                                      child: IconFont.facebook))
                            ]),
                        SizedBox(height: 40.h),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(ValueString.doNotHaveAccount,
                                  style: AppTextStyle.doNotHaveAccountStyle),
                              GestureDetector(
                                  onTap: () => controller.signUpNavigation(),
                                  child: Text(' ${ValueString.signUp}',
                                      style: AppTextStyle.signUpStyle))
                            ])
                      ]))))));

  _headerLogin() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(ValueString.loginButton, style: AppTextStyle.titleFormStyle),
      Text(ValueString.toAccountLoginHeader,
          style: AppTextStyle.subTitleFormStyle),
      SizedBox(height: 10.h),
      Text(ValueString.singWithEmailPasswordHeader,
          style: AppTextStyle.descriptionFormStyle)
    ]);
  }
}
