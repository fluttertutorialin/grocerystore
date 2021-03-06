/*
   DEVELOPED BY: KAMLESH LAKHANI
*/

import '../base/base_controller.dart';
import '../import_package.dart';

class SignUpController extends BaseController
    with SingleGetTickerProviderMixin {

  //VALIDATION USE
  final formKey = GlobalKey<FormState>();

  //TEXT CLEAR AND GET
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();

  // PROGRESSBAR
  /*final _statusProgressBarRx = Rx<StatusProgressBar>(StatusProgressBar.INITIAL); // SET DATA
    get statusProgressBar => _statusProgressBarRx.value; //GET DATA
  */

  late AnimationController singUpButtonController;

  //PAGE LAUNCH FIRST SCROLL
  @override
  void onInit() {
    super.onInit();
    singUpButtonController = AnimationController(
        duration: const Duration(milliseconds: 3000), vsync: this);
  }

  // SIGNUP VALIDATION CHECK THE FORM
  Future<void> signUpValidateCheck(Function loading) async {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      loading(true);

      //HOME SCREEN NAVIGATION
      AppRoute.OTP.changeScreen();
    }
  }

  //VALIDATION
  String? emailValidation(String? value) => Validator.validateEmail(value);

  String? passwordValidation(String? value) =>
      Validator.validatePassword(value);

  String? userNameValidation(String? value) =>
      Validator.validateUserName(value);

  String? mobileValidation(String? value) => Validator.validateMobile(value);

  //CLEAR RESOURCE
  @override
  void onClose() {
    super.onClose();
    singUpButtonController.dispose();

    emailController.clear();
    passwordController.clear();
  }
}
