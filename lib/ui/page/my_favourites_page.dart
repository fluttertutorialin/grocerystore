import 'package:flutter_svg/svg.dart';
import 'package:line_icons/line_icons.dart';
import '../../import_package.dart';
import '../widget/custom_appbar_widget.dart';

class MyFavouritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbarWidget(
            title: 'My Favourites',
            showBackButton: true,
            leading: SvgPicture.asset(ImageAsset.backArrowAsset,
                color: AppColors.whiteIconColor, height: 15)),
        body: Column(children: [
          Container(
              color: AppColors.primaryColor,
              padding: EdgeInsets.all(10),
              child: TextFormField(
                  minLines: 1,
                  maxLines: 1,
                  style: TextStyle(fontSize: 14),
                  decoration: InputDecoration(
                      prefixIcon: Icon(LineIcons.search,
                          color: AppColors.black, size: 18),
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                      border: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: AppColors.black, width: 2),
                          borderRadius: const BorderRadius.all(
                              const Radius.circular(30.0))),
                      filled: true,
                      fillColor: AppColors.white,
                      hintText: 'Search',
                      hintStyle: TextStyle(fontSize: 14),
                      errorStyle: AppTextStyle.errorTextFieldStyle,
                      suffixIconConstraints:
                      BoxConstraints(maxHeight: 40.h, maxWidth: 40.w)))),
          Expanded(
              child: GridView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.76,
                      crossAxisCount: 2,
                      crossAxisSpacing: 0.0,
                      mainAxisSpacing: 4.0),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        height: 236.h,
                        child: ListView(
                            scrollDirection:
                            Axis.horizontal, //Axis.vertical = Working
                            children: <Widget>[
                              Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  child: Card(
                                      color: Colors.white,
                                      child: InkWell(
                                          borderRadius:
                                          BorderRadius.circular(5.0),
                                          splashColor: Theme.of(context)
                                              .primaryColorLight,
                                          onTap: () => Get.toNamed(
                                              AppRoute.PRODUCT_DETAIL),
                                          child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.all(
                                                      Radius.circular(
                                                          5.0))),
                                              width: 160.w,
                                              child: Column(children: [
                                                Padding(
                                                    padding: EdgeInsets.all(5),
                                                    child: Column(children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .topRight,
                                                          child: CircleAvatar(
                                                              backgroundColor:
                                                              Colors.grey
                                                                  .withOpacity(
                                                                  0.1),
                                                              maxRadius: 15,
                                                              child: Icon(
                                                                  LineIcons
                                                                      .heartAlt,
                                                                  size: 15))),
                                                      SizedBox(height: 15.h),
                                                      Image.asset(
                                                          ImageAsset
                                                              .product2IconAsset,
                                                          width: 90.w,
                                                          height: 90.h),
                                                      SizedBox(height: 10.h),
                                                      Text('Red Label Tea Leaf',
                                                          style: AppTextStyle
                                                              .categoryNameStyle),
                                                      Text('1 KG',
                                                          style: AppTextStyle
                                                              .weightStyle)
                                                    ])),
                                                SizedBox(height: 5.h),
                                                Expanded(
                                                    child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                              EdgeInsets.all(5),
                                                              child: Text(
                                                                  '\u20A8. 10',
                                                                  style: AppTextStyle
                                                                      .priceStyle)),
                                                          Container(
                                                              padding:
                                                              EdgeInsets.all(8),
                                                              decoration: BoxDecoration(
                                                                  color: AppColors
                                                                      .primaryColor,
                                                                  borderRadius: BorderRadius.only(
                                                                      bottomRight:
                                                                      Radius.circular(
                                                                          10.0),
                                                                      topLeft:
                                                                      Radius.circular(
                                                                          10.0),
                                                                      bottomLeft:
                                                                      Radius.circular(
                                                                          0.0))),
                                                              child: Icon(
                                                                  LineIcons
                                                                      .addToShoppingCart,
                                                                  size: 18,
                                                                  color: AppColors
                                                                      .whiteIconColor))
                                                        ]))
                                              ])))))
                            ]));
                  }))
        ]));
  }
}
