/*
   DEVELOPED BY: KAMLESH LAKHANI
*/

import '../import_package.dart';
import '../controller/controller_package.dart' show ChangePasswordController;

class ChangePasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChangePasswordController>(() => ChangePasswordController());
  }
}
