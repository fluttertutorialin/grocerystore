import 'package:flutter_svg/svg.dart';
import 'package:grocerystore/import_package.dart';
import 'package:grocerystore/ui/widget/custom_appbar_widget.dart';
import 'package:line_icons/line_icons.dart';

class ProductDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbarWidget(
            title: 'Product Detail',
            showBackButton: true,
            leading: SvgPicture.asset(ImageAsset.backArrowAsset,
                color: AppColors.whiteIconColor, height: 15)),
        body: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.all(5.0),
                child: Column(children: [
                  Column(children: [
                    Align(
                        alignment: Alignment.topRight,
                        child: CircleAvatar(
                            backgroundColor: Colors.grey.withOpacity(0.1),
                            maxRadius: 15,
                            child: Icon(LineIcons.heart, size: 15))),
                    SizedBox(height: 15.h),
                    Image.asset(ImageAsset.product2IconAsset,
                        width: 150.w, height: 150.h),
                    SizedBox(height: 10.h),
                  ]),
                  SizedBox(height: 10.h),
                  //PRODUCT DETAIL
                  Card(
                      elevation: 0.5,
                      color: AppColors.white,
                      child: Column(children: [
                        Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Product Detail',
                                      style: AppTextStyle.detailTitleStyle),
                                  SizedBox(height: 5.h),
                                  Text('Red Label Tea Leaf',
                                      style:
                                          AppTextStyle.detailCategoryNameStyle),
                                  SizedBox(height: 1.h),
                                  Row(children: [
                                    Text('Rs. 100',
                                        style: AppTextStyle.detailPriceStyle),
                                    SizedBox(width: 10.h),
                                    Text('(1 KG)',
                                        style: AppTextStyle.detailWeightStyle),
                                  ]),
                                  SizedBox(height: 5.h),
                                  Row(children: [
                                    Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 3),
                                        decoration: BoxDecoration(
                                            color: AppColors.primaryColor,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5.0))),
                                        child: Text('5.0',
                                            style: AppTextStyle
                                                .detailRattingStyle)),
                                    SizedBox(width: 5.h),
                                    Text('96 Ratting',
                                        style: AppTextStyle
                                            .detailRattingTotalStyle)
                                  ]),
                                ])),
                        SizedBox(height: 10.h),
                        Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: AppColors.primaryColor,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(10.0),
                                      topLeft: Radius.circular(10.0),
                                      bottomLeft: Radius.circular(0.0))),
                              child: Text('ADD TO CART',
                                  style: AppTextStyle.addToCartButtonTextStyle),
                            ))
                      ])),
                  SizedBox(height: 10.h),
                  //DETAIL
                  Card(
                      elevation: 0.5,
                      color: AppColors.white,
                      child: Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Detail',
                                    style: AppTextStyle.detailTitleStyle),
                                SizedBox(height: 5.h),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Type',
                                          style: AppTextStyle
                                              .companyDetailTitleStyle),
                                      Text('Red Label',
                                          style: AppTextStyle
                                              .companyDetailDescriptionStyle),
                                    ])
                              ])))
                ]))));
  }
}
