import '../import_package.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    //NETWORK BINDING PROVIDER AND REPOSITORY
    Get.lazyPut<NetworkProvider>(() => NetworkRepository(Get.find()), fenix: true);

    //LOCAL STORAGE SESSION PROVIDER AND REPOSITORY
    Get.lazyPut<GetStorage>(() => GetStorage(), fenix: true);

    Get.lazyPut<GetStorageProvider>(() => GetStorageRepository(Get.find()), fenix: true);
  }
}
