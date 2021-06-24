/*
   DEVELOPED BY: KAMLESH LAKHANI

   GetView - STATLESS WIDGET
   GetWidget - STATEFULL WIDGET
*/

import '../../controller/controller_package.dart' show SplashController;
import '../../import_package.dart';

class SplashPage extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Center(
            child: Image.asset(controller.appIcon!)));
  }
}
