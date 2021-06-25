import 'package:flutter_svg/svg.dart';
import 'package:grocerystore/import_package.dart';
import 'package:grocerystore/ui/widget/custom_appbar_widget.dart';
import 'package:line_icons/line_icons.dart';

class MyCartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbarWidget(
            title: 'My Cart',
            showBackButton: true,
            leading: SvgPicture.asset(ImageAsset.backArrowAsset,
                color: AppColors.whiteIconColor, height: 15)),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                        color: AppColors.white,
                        elevation: 0.8,
                        child: Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      flex: 1,
                                      child: Image.asset(
                                          ImageAsset.product2IconAsset,
                                          width: 90.w,
                                          height: 90.h)),
                                  SizedBox(width: 8.h),
                                  Expanded(
                                      flex: 4,
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                                alignment: Alignment.topRight,
                                                child: CircleAvatar(
                                                    backgroundColor: Colors.red
                                                        .withOpacity(0.1),
                                                    maxRadius: 15,
                                                    child: Icon(
                                                        Icons.delete_outlined,
                                                        color: Colors.red,
                                                        size: 15))),
                                            Text('Red Label Tea Leaf',
                                                style: AppTextStyle
                                                    .categoryNameStyle),
                                            Row(children: [
                                              Text('\u20A8. 10',
                                                  style:
                                                      AppTextStyle.priceStyle),
                                              SizedBox(width: 10.h),
                                              Text('(1 KG)',
                                                  style:
                                                      AppTextStyle.weightStyle)
                                            ]),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Container(
                                                      padding:
                                                          EdgeInsets.all(2),
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: AppColors
                                                                  .primaryColor),
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          5.0))),
                                                      child: Icon(
                                                          LineIcons.plus,
                                                          color: AppColors
                                                              .primaryColor,
                                                          size: 14)),
                                                  SizedBox(width: 10.h),
                                                  Text('0',
                                                      style: AppTextStyle
                                                          .priceStyle),
                                                  SizedBox(width: 10.h),
                                                  Container(
                                                      padding:
                                                          EdgeInsets.all(2),
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                              color: AppColors
                                                                  .primaryColor),
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          5.0))),
                                                      child: Icon(
                                                          LineIcons.minus,
                                                          color: AppColors
                                                              .primaryColor,
                                                          size: 14))
                                                ])
                                          ]))
                                ])));
                  })),
          Container(
              padding: EdgeInsets.all(10),
              child: TextButton(
                  child: Container(
                      padding: EdgeInsets.all(10),
                      child: Center(
                          child: Text("Proceed To Checkout",
                              style: AppTextStyle.buttonTextStyle))),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.primaryColor)),
                  onPressed: () => Get.toNamed(AppRoute.CHECKOUT)))
        ]));
  }
}
