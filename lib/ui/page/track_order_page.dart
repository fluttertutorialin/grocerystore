import 'package:flutter_svg/svg.dart';
import 'package:grocerystore/import_package.dart';
import 'package:grocerystore/ui/widget/custom_appbar_widget.dart';

class TrackOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbarWidget(
            title: 'Track Order',
            showBackButton: true,
            leading: SvgPicture.asset(ImageAsset.backArrowAsset,
                color: AppColors.whiteIconColor, height: 15)),
        body: SingleChildScrollView(
            child: Column(children: [
          Card(
              color: AppColors.white,
              child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Order Details',
                            style: AppTextStyle.checkOutHeaderTitleStyle),
                        SizedBox(height: 10.h),
                        Text('001',  style: AppTextStyle.orderIdCheckOutStyle),
                        SizedBox(height: 3.h),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Order Date',
                                  style: AppTextStyle.checkOutLabelStyle),
                              Text('00-00-0000', style: AppTextStyle.checkOutPriceStyle)
                            ]),
                        SizedBox(height: 3.h),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Delivery Date',
                                  style: AppTextStyle.checkOutLabelStyle),
                              Text('00-00-0000', style: AppTextStyle.checkOutPriceStyle)
                            ]),
                       Divider(),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Items',
                                  style: AppTextStyle.checkOutLabelStyle),
                              Text('0', style: AppTextStyle.checkOutPriceStyle)
                            ]),
                        SizedBox(height: 3.h),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Delivery Charge',
                                  style: AppTextStyle.checkOutLabelStyle),
                              Text('0', style: AppTextStyle.checkOutPriceStyle)
                            ]),
                        SizedBox(height: 3.h),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Discount',
                                  style: AppTextStyle.checkOutLabelStyle),
                              Text('0', style: AppTextStyle.checkOutPriceStyle)
                            ]),
                        Divider(),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Total amount pay',
                                  style: AppTextStyle.totalPriceLabelStyle),
                              Text('0', style: AppTextStyle.totalPriceStyle)
                            ]),
                        SizedBox(height: 10.h),
                        TextButton(
                            child: Container(
                                padding: EdgeInsets.all(10),
                                child: Center(
                                    child: Text('CANCEL ORDER',
                                        style: AppTextStyle.cancelOrderButtonTextStyle))),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.grey.withOpacity(0.1))),
                            onPressed: () {
                              Get.back();
                            })
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
                          Text('Address',
                              style: AppTextStyle.addressBillingAddressStyle)
                        ])
                  ])))
        ])));
  }
}
