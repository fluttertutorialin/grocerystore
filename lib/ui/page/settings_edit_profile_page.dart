import 'package:flutter_svg/svg.dart';
import '../../import_package.dart';

class SettingsEditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverAppBar(
          pinned: true,
          leading: IconButton(
              onPressed: () => Get.back(),
              icon: SvgPicture.asset(ImageAsset.backArrowAsset,
                  color: AppColors.whiteIconColor, height: 15)),
          stretch: true,
          expandedHeight: 200.0,
          flexibleSpace: FlexibleSpaceBar(
              background: Stack(fit: StackFit.loose, children: <Widget>[
            Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  SizedBox(height: 30.h),
                  CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey.withOpacity(0.1),
                      backgroundImage:
                          ExactAssetImage(ImageAsset.profilePictureAsset)),
                  SizedBox(height: 10.h),
                  Text(ValueString.nameDeveloperApp,
                      style: AppTextStyle.drawerUserNameStyle),
                  Text(ValueString.emailDeveloperApp.toLowerCase(),
                      style: AppTextStyle.drawerEmailStyle)
                ])),
            DecoratedBox(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topRight,
                        colors: <Color>[
                  AppColors.primaryColor,
                  AppColors.primaryColor
                ])))
          ]))),
      SliverToBoxAdapter(
          child: Column(children: [
        SizedBox(height: 10.h),
        _settingMenu(title: 'Edit Profile', onTap: () {}),
        Divider(),
        _settingMenu(title: 'Change password', onTap: () {
          Get.toNamed(AppRoute.CHANGE_PASSWORD);
        }),
        Divider(),
        _settingMenu(title: 'Coupons', onTap: () {}),
        Divider(),
        _settingMenu(title: 'Help Center', onTap: () {}),
        Divider()
      ]))
    ]));
  }

  _settingMenu({String? title, Function()? onTap}) => ListTile(
      trailing: IconFont.arrowCircleRight,
      title: Text(title!, style: AppTextStyle.drawerMenuStyle),
      onTap: onTap);
}
