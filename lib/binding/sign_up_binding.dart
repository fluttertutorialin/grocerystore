/*
   DEVELOPED BY: KAMLESH LAKHANI
*/

import '../import_package.dart';
import '../controller/controller_package.dart' show SignUpController;

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignUpController>(() => SignUpController());
  }
}
