/*
   DEVELOPED BY: KAMLESH LAKHANI
   DEFINE THE TOTAL API OF APP
*/

import 'package:dartz/dartz.dart';
import '../common/dio_helper.dart';

abstract class NetworkProvider {

  //POST API CALLING
  Future<Either<ErrorEntity, dynamic>> postAPI(
      {String? baseUrl,
      Map<String, dynamic>? parameter});

  //GET API CALLING
  Future<Either<ErrorEntity, dynamic>> getAPI(
      {String? baseUrl,
      Map<String, dynamic>? parameter});
}
