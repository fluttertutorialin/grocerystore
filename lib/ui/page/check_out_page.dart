import 'package:flutter_svg/svg.dart';
import '../widget/custom_appbar_widget.dart';
import '../../import_package.dart';

class CheckOutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbarWidget(
            title: 'Checkout',
            showBackButton: true,
            leading: SvgPicture.asset(ImageAsset.backArrowAsset,
                color: AppColors.whiteIconColor, height: 15)),
        body: ListView(children: [
          Column(children: [
            Card(
                color: AppColors.white,
                child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Price Details',
                              style: AppTextStyle.checkOutHeaderTitleStyle),
                          SizedBox(height: 10.h),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Items',
                                    style: AppTextStyle.checkOutLabelStyle),
                                Text('0',
                                    style: AppTextStyle.checkOutPriceStyle)
                              ]),
                          SizedBox(height: 3.h),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Delivery Charge',
                                    style: AppTextStyle.checkOutLabelStyle),
                                Text('0',
                                    style: AppTextStyle.checkOutPriceStyle)
                              ]),
                          SizedBox(height: 3.h),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Discount',
                                    style: AppTextStyle.checkOutLabelStyle),
                                Text('0',
                                    style: AppTextStyle.checkOutPriceStyle)
                              ]),
                          Divider(),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Total amount pay',
                                    style: AppTextStyle.totalPriceLabelStyle),
                                Text('0', style: AppTextStyle.totalPriceStyle)
                              ])
                        ]))),
            Card(
                color: AppColors.white,
                child: Container(
                    padding: EdgeInsets.all(10),
                    child: Row(children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Billing Address',
                                style: AppTextStyle.checkOutHeaderTitleStyle),
                            SizedBox(height: 10.h),
                            Text('Lakhani Kamlesh',
                                style: AppTextStyle.nameBillingAddressType),
                            SizedBox(height: 3.h),
                            Text('9586331823', style: AppTextStyle.mobileStyle),
                            SizedBox(height: 3.h),
                            Text('kamal.lakhani56@gmail.com',
                                style: AppTextStyle.emailStyle),
                            SizedBox(height: 5.h),
                            Text('Address', style: AppTextStyle.addressBillingAddressStyle)
                          ])
                    ])))
          ]),
          Container(
              padding: EdgeInsets.all(10),
              child: TextButton(
                  child: Container(
                      padding: EdgeInsets.all(10),
                      child: Center(
                          child: Text("Proceed To Buy",
                              style: AppTextStyle.buttonTextStyle))),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.primaryColor)),
                  onPressed: () => Get.toNamed(AppRoute.CHECKOUT)))
        ]));
  }
}
