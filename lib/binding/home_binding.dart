/*
   DEVELOPED BY: KAMLESH LAKHANI
*/

import '../import_package.dart';
import '../controller/controller_package.dart' show HomeController;

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    //CONTROLLER
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
