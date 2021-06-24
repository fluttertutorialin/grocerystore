import 'package:flutter_svg/svg.dart';
import '../../import_package.dart';
import '../widget/custom_appbar_widget.dart';

class AllCategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbarWidget(
            title: 'All Category',
            showBackButton: true,
            leading: SvgPicture.asset(ImageAsset.backArrowAsset,
                color: AppColors.whiteIconColor, height: 15)),
        body: GridView.builder(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            itemCount: 3,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1.1, crossAxisCount: 3),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Material(
                      child: InkWell(
                          borderRadius: BorderRadius.circular(5.0),
                          splashColor: Theme.of(context).primaryColorLight,
                          onTap: () => Get.toNamed(AppRoute.VIEW_ALL),
                          child: Container(
                              decoration: BoxDecoration(
                                  color:
                                      AppColors.primaryColor.withOpacity(0.2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0))),
                              width: 90.w,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Column(children: [
                                SvgPicture.asset(
                                    ImageAsset.fruitCategoryIconAsset),
                                SizedBox(height: 10.h),
                                Text('Fruit',
                                    style: AppTextStyle.categoryNameBoldStyle)
                              ])))));
            }));
  }
}
