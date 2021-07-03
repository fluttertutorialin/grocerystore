/*
   DEVELOPED BY: KAMLESH LAKHANI
*/

import '../import_package.dart';
import '../controller/controller_package.dart' show SplashController;

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController(Get.find()));
  }
}
