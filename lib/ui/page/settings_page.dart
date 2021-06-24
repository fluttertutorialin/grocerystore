import 'package:flutter_svg/svg.dart';
import 'package:grocerystore/import_package.dart';
import 'package:grocerystore/ui/widget/custom_appbar_widget.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbarWidget(
            title: 'Settings',
            showBackButton: true,
            leading: SvgPicture.asset(ImageAsset.backArrowAsset,
                color: AppColors.whiteIconColor, height: 15)),
        body: SingleChildScrollView(
            child: Column(children: [
          SizedBox(height: 10.h),
          _settingMenu(title: 'Edit Profile', onTap: () {}),
          Divider(),
          _settingMenu(title: 'My Address', onTap: () {
             Get.toNamed(AppRoute.MY_ADDRESS);
          }),
          Divider(),
          _settingMenu(title: 'My Past Order History', onTap: () {
            Get.toNamed(AppRoute.MY_ORDERS);
          }),
          Divider(),
          _settingMenu(title: 'Push Notifications', onTap: () {}),
          Divider()
        ])));
  }

  _settingMenu({String? title, Function()? onTap}) => ListTile(
      title: Text(title!, style: AppTextStyle.drawerMenuStyle), onTap: onTap);
}
