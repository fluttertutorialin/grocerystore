import 'package:flutter_svg/svg.dart';
import 'package:grocerystore/import_package.dart';
import 'package:grocerystore/ui/widget/custom_appbar_widget.dart';

class MyOrdersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbarWidget(
            title: 'My Orders',
            showBackButton: true,
            leading: SvgPicture.asset(ImageAsset.backArrowAsset,
                color: AppColors.whiteIconColor, height: 15)),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ListView(shrinkWrap: true, children: [
            Card(
                color: AppColors.white,
                elevation: 0.8,
                child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(children: [
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                flex: 1,
                                child: Image.asset(ImageAsset.product2IconAsset,
                                    width: 90.w, height: 90.h)),
                            SizedBox(width: 8.h),
                            Expanded(
                                flex: 4,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('order Id',
                                          style: AppTextStyle.orderIdStyle),
                                      SizedBox(height: 3.h),
                                      Text('Total Items: 0',
                                          style:
                                              AppTextStyle.totalQuantityStyle),
                                      Text('Rs. 00',
                                          style:
                                              AppTextStyle.totalQuantityStyle),
                                      Text('Address',
                                          style:
                                              AppTextStyle.totalQuantityStyle),
                                      Text('Delivered by 10-10-2020',
                                          textAlign: TextAlign.right,
                                          style: AppTextStyle.deliveredByStyle),
                                    ]))
                          ])
                    ])))
          ]),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Center(
                  child: Text('No more new orders',
                      style: AppTextStyle.noMoreOrderStyle))),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child:
                  Text('Order History', style: AppTextStyle.orderHistoryStyle)),
          ListView(shrinkWrap: true, children: [
            Card(
                color: AppColors.white,
                elevation: 0.8,
                child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(children: [
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                flex: 1,
                                child: Image.asset(ImageAsset.product2IconAsset,
                                    width: 90.w, height: 90.h)),
                            SizedBox(width: 8.h),
                            Expanded(
                                flex: 4,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('order Id',
                                                style:
                                                    AppTextStyle.orderIdStyle),
                                            Text('10-10-2020',
                                                textAlign: TextAlign.right,
                                                style: AppTextStyle
                                                    .deliveredByHistoryStyle)
                                          ]),
                                      SizedBox(height: 3.h),
                                      Text('Total Items: 0',
                                          style:
                                              AppTextStyle.totalQuantityStyle),
                                      Text('Rs. 00',
                                          style:
                                              AppTextStyle.totalQuantityStyle),
                                      Text('Address',
                                          style:
                                              AppTextStyle.totalQuantityStyle),
                                    ]))
                          ])
                    ])))
          ]),
        ]));
  }
}
