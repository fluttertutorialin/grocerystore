/*
   DEVELOPED BY: KAMLESH LAKHANI
*/

import '../import_package.dart';
import '../controller/controller_package.dart' show ChangePasswordController;

class ChangePasswordBinding extends Bindings {
  @override
  void dependencies() {
    //NETWORK BINDING PROVIDER AND REPOSITORY
    Get.lazyPut<NetworkProvider>(() => NetworkRepository(Get.find()), fenix: false);

    //LOCAL STORAGE SESSION PROVIDER AND REPOSITORY
    Get.lazyPut<GetStorage>(() => GetStorage());

    Get.lazyPut<GetStorageProvider>(() => GetStorageRepository(Get.find()), fenix: false);

    Get.lazyPut<ChangePasswordController>(() => ChangePasswordController());
  }
}
