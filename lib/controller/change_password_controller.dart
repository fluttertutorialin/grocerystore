import '../import_package.dart';
import '../model/sent/sent_package.dart' show LoginParameter;
import '../base/base_controller.dart';

class ChangePasswordController extends BaseController {

  //TEXT CLEAR AND GET
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //PASSWORD VISIBLE OR NOT
  final _passwordVisible = false.obs;
  get passwordVisible => this._passwordVisible.value;
  set passwordVisible(value) => this._passwordVisible.value = value;

  final _email = "".obs;
  get email => this._email.value;
  set email(value) => this._email.value = value;

  final _password = "".obs;
  get password => this._password.value;
  set password(value) => this._password.value = value;


  //PAGE LAUNCH FIRST SCROLL
  @override
  void onInit() {
    super.onInit();
  }

  //STORE TEXT-FIELD ON CHANGE VALUE
  void setEmail(String? value) => email = value;

  void setPassword(String? value) => password = value;

  //VALIDATION
  String? emailValidation(String? value) => Validator.validateEmail(value);
  String? passwordValidation(String? value) => Validator.validatePassword(value);

  // LOGIN VALIDATION CHECK THE FORM
  Future<void> changePasswordResponseAPI(Function loading) async {
    loading(true);

    getAPI(success: (value){
      loading(false);
      loginSignUpSession();
      AppRoute.HOME.offAllNamed();
    }, error: (error){
      loading(false);
      passwordController.clear();
    });
  }

  //CLEAR RESOURCE
  @override
  void onClose() {
    super.onClose();
  }
}
