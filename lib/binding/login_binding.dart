/*
   DEVELOPED BY: KAMLESH LAKHANI
*/

import '../import_package.dart';
import '../controller/controller_package.dart' show LoginController;

class LoginBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<LoginController>(() => LoginController(), tag: 'loginController');
  }
}
