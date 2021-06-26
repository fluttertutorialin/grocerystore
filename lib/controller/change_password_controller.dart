import '../import_package.dart';
import '../base/base_controller.dart';

class ChangePasswordController extends BaseController {
  //TEXT CLEAR AND GET
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController currentPasswordController =
      TextEditingController();

  //PASSWORD VISIBLE OR NOT
  final _passwordVisible = false.obs;
  get passwordVisible => this._passwordVisible.value;
  set passwordVisible(value) => this._passwordVisible.value = value;

  final _newPassword = "".obs;
  get newPassword => this._newPassword.value;
  set newPasswordSet(value) => this._newPassword.value = value;

  final _confirmPassword = "".obs;
  get confirmPassword => this._confirmPassword.value;
  set confirmPasswordSet(value) => this._confirmPassword.value = value;

  final _currentPassword = "".obs;
  get currentPassword => this._currentPassword.value;
  set currentPasswordSet(value) => this._currentPassword.value = value;

  //PAGE LAUNCH FIRST SCROLL
  @override
  void onInit() {
    super.onInit();
  }

  //STORE TEXT-FIELD ON CHANGE VALUE
  void setNewPassword(String? value) => newPasswordSet = value;

  void setNewConfirmPassword(String? value) => confirmPasswordSet = value;

  void setCurrentPassword(String? value) => currentPasswordSet = value;

  //VALIDATION
  String? newPasswordValidation(String? value) =>
      Validator.validateNewPassword(value);

  String? newConformPasswordValidation(String? value) =>
      Validator.validateConfirmPassword(value, newPassword);

  String? currentPasswordValidation(String? value) =>
      Validator.validateCurrentPassword(value);

  // LOGIN VALIDATION CHECK THE FORM
  Future<void> changePasswordResponseAPI(Function loading) async {
    loading(true);

    getAPI(success: (value) {
      loading(false);
      loginSignUpSession();
      AppRoute.HOME.offAllNamed();
    }, error: (error) {
      loading(false);
      newPasswordController.clear();
      confirmPasswordController.clear();
      currentPasswordController.clear();
    });
  }

  //CLEAR RESOURCE
  @override
  void onClose() {
    super.onClose();
    newPasswordController.clear();
    confirmPasswordController.clear();
    currentPasswordController.clear();
  }
}
