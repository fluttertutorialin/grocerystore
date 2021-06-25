import 'package:flutter_svg/svg.dart';
import '../../import_package.dart';
import '../widget/custom_appbar_widget.dart';

class MyAddressPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbarWidget(
            title: 'My Address',
            showBackButton: true,
            leading: SvgPicture.asset(ImageAsset.backArrowAsset,
                color: AppColors.whiteIconColor, height: 15)),
        body: Column(children: [
          Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: AppColors.primaryColor.withOpacity(0.2),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              padding: EdgeInsets.all(10),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                IconFont.addressBook,
                SizedBox(width: 10.h),
                Text('ADD NEW ADDRESS',
                    style: AppTextStyle.addNewAddressButtonTextStyle)
              ])),
          Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                        elevation: 0.5,
                        color: AppColors.white,
                        child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Lakhani Kamlesh',
                                      style: AppTextStyle.addressNameStyle),
                                  SizedBox(height: 5.h),
                                  Text('Home Address',
                                      style: AppTextStyle.addressTypeStyle),
                                  Text('9586331823',
                                      style: AppTextStyle.mobileStyle),
                                  Text('kamal.lakhani56@gmail.com',
                                      style: AppTextStyle.emailStyle),
                                  SizedBox(height: 5.h),
                                  Text('Address',
                                      style: AppTextStyle.addressStyle),
                                  Divider(),
                                  Text('Set as your default delivery address',
                                      style: AppTextStyle.defaultAddressStyle),
                                ])));
                  }))
        ]));
  }
}
