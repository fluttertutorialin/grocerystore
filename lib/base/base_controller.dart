/*
   DEVELOPED BY: KAMLESH LAKHANI
   completer_ex: This library period call the api. For example every 10 second
*/

import '../route_access/app_page.dart';
import '../resource/strings/session_string.dart';
import '../shared/provider/network_provider.dart';
import '../resource/strings/server_string.dart';
import '../shared/provider/get_storage_provider.dart';
import 'package:get/get.dart';
import '../util/extensions.dart';

class BaseController<T> extends GetxController {
  final _isLoadingRx = false.obs;
  get isLoading => _isLoadingRx.value;
  final _errorRx = ''.obs;
  get error => _errorRx.value;

  final NetworkProvider _networkProvider = Get.find();
  final GetStorageProvider _getStorageProvider = Get.find();

  @override
  onInit() {
    super.onInit();
  }

  getAPI({required Function success, required Function(String? error) error}) {
    _isLoadingRx.value = true;

    _networkProvider.getAPI(baseUrl: ServerString.postUrl).futureValue((value) {
      _isLoadingRx.value = false;
      success(value);
    }, onError: ((value) {
      _isLoadingRx.value = false;
      _errorRx.value = value!;
      error(value);
    }));
  }

  postAPI({required Function success, required Function(String? error) error}) {
    _isLoadingRx.value = true;

    _networkProvider.postAPI(baseUrl: ServerString.postUrl).futureValue((value) {
      _isLoadingRx.value = false;
      success(value);
    }, onError: ((value) {
      _isLoadingRx.value = false;
      _errorRx.value = value!;
      error(value);
    }));
  }

  //SESSION STORE DATA
  loginSignUpSession({String? userId, String? userName, String? email}){
    _getStorageProvider.saveValue(SessionString.isLoginSession, true);
    _getStorageProvider.saveValue(SessionString.userIdSession, '');
    _getStorageProvider.saveValue(SessionString.userNameSession, '');
    _getStorageProvider.saveValue(SessionString.emailSession, '');
  }

  //SESSION CLEAR 4
  logout(){
    _getStorageProvider.removeValue(SessionString.isLoginSession);
    _getStorageProvider.removeValue(SessionString.userIdSession);
    _getStorageProvider.removeValue(SessionString.userNameSession);
    _getStorageProvider.removeValue(SessionString.emailSession);

    //LOGIN NAVIGATION
    AppRoute.LOGIN.offAllNamed();

    //NOT CLEAR SESSION

  }
}
