/*
   DEVELOPED BY: KAMLESH LAKHANI

*/

import 'package:flutter_svg/svg.dart';
import 'package:grocerystore/ui/widget/custom_back_button.dart';
import 'package:line_icons/line_icons.dart';
import '../widget/custom_appbar_widget.dart';
import '../../import_package.dart';

class HomePage extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) => Scaffold(
      key: _scaffoldKey,
      appBar: CustomAppbarWidget(
          title: ValueString.appName,
          showBackButton: true,
          onBackPress: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          leading: SvgPicture.asset(ImageAsset.navigationIconAsset,
              color: AppColors.whiteIconColor, height: 15),
          actions: [
            CustomBackButton(
                leading: SvgPicture.asset(ImageAsset.notificationIconAsset,
                    color: AppColors.whiteIconColor, height: 20))
          ]),
      drawer: Drawer(
          child: ListView(padding: EdgeInsets.zero, children: <Widget>[
        _drawerHeader(),
        _drawerMenu(title: 'Home'),
        _drawerMenu(
            title: 'All Categories',
            onTap: () {
              Get.back();
              Get.toNamed(AppRoute.ALL_CATEGORY);
            }),
        _drawerMenu(
            title: 'My Orders',
            onTap: () {
              Get.back();
              Get.toNamed(AppRoute.MY_ORDERS);
            }),
        _drawerMenu(
            title: 'My Favourites',
            onTap: () {
              Get.back();
              Get.toNamed(AppRoute.MY_FAVOURITES);
            }),
        _drawerMenu(title: 'My Cart', onTap: (){
          Get.back();
          Get.toNamed(AppRoute.MY_CART);
        }),
        _drawerMenu(title: 'Privacy Policy'),
        _drawerMenu(title: 'Share'),
        _drawerMenu(
            title: 'Settings',
            onTap: () {
              Get.back();
              Get.toNamed(AppRoute.SETTINGS);
            }),
        _drawerMenu(
            title: 'Logout',
            onTap: () {
              Get.offNamedUntil(AppRoute.LOGIN, (route) => false);
            }),
      ])),
      body: CustomScrollView(slivers: <Widget>[
        //SLIDER
        SliverToBoxAdapter(child: _slider()),

        //CATEGORY
        SliverToBoxAdapter(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Text('Category',
                      style: AppTextStyle.categoryHeaderStyle)),
              InkWell(
                  borderRadius: BorderRadius.circular(5.0),
                  splashColor: Theme.of(context).primaryColorLight,
                  onTap: () => Get.toNamed(AppRoute.ALL_CATEGORY),
                  child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child:
                          Text('View All', style: AppTextStyle.viewAllStyle)))
            ])),
        SliverToBoxAdapter(
            child: Container(
                height: 90.h,
                child: ListView(
                    scrollDirection: Axis.horizontal, //Axis.vertical = Working
                    children: [
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: InkWell(
                              borderRadius: BorderRadius.circular(5.0),
                              splashColor: Theme.of(context).primaryColorLight,
                              onTap: () => Get.toNamed(AppRoute.VIEW_ALL),
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  decoration: BoxDecoration(
                                      color: AppColors.primaryColor
                                          .withOpacity(0.2),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0))),
                                  width: 90.w,
                                  child: Column(children: [
                                    SvgPicture.asset(
                                        ImageAsset.fruitCategoryIconAsset),
                                    SizedBox(height: 10.h),
                                    Text('Fruit',
                                        style:
                                            AppTextStyle.categoryNameBoldStyle)
                                  ]))))
                    ]))),

        //BEST SELLER
        SliverToBoxAdapter(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Text('Best Seller',
                      style: AppTextStyle.categoryHeaderStyle)),
              InkWell(
                  borderRadius: BorderRadius.circular(5.0),
                  splashColor: Theme.of(context).primaryColorLight,
                  onTap: () => Get.toNamed(AppRoute.VIEW_ALL),
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child:
                          Text('View All', style: AppTextStyle.viewAllStyle)))
            ])),
        SliverToBoxAdapter(
            child: Container(
                height: 236.h,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: Card(
                              color: Colors.white,
                              child: InkWell(
                                  borderRadius: BorderRadius.circular(5.0),
                                  splashColor:
                                      Theme.of(context).primaryColorLight,
                                  onTap: () =>
                                      Get.toNamed(AppRoute.PRODUCT_DETAIL),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5.0))),
                                      width: 150.w,
                                      child: Column(children: [
                                        Padding(
                                            padding: EdgeInsets.all(5),
                                            child: Column(children: [
                                              Align(
                                                  alignment: Alignment.topRight,
                                                  child: CircleAvatar(
                                                      backgroundColor: Colors
                                                          .grey
                                                          .withOpacity(0.1),
                                                      maxRadius: 15,
                                                      child: Icon(
                                                          LineIcons.heart,
                                                          size: 15))),
                                              SizedBox(height: 15.h),
                                              Image.asset(
                                                  ImageAsset.product2IconAsset,
                                                  width: 90.w,
                                                  height: 90.h),
                                              SizedBox(height: 10.h),
                                              Text('Red Label Tea Leaf',
                                                  style: AppTextStyle
                                                      .categoryNameStyle),
                                              Text('1 KG',
                                                  style:
                                                      AppTextStyle.weightStyle)
                                            ])),
                                        SizedBox(height: 5.h),
                                        Expanded(
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                              Padding(
                                                  padding: EdgeInsets.all(5),
                                                  child: Text('\u20A8. 10',
                                                      style: AppTextStyle
                                                          .priceStyle)),
                                              Container(
                                                  padding: EdgeInsets.all(8),
                                                  decoration: BoxDecoration(
                                                      color: AppColors
                                                          .primaryColor,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              bottomRight: Radius
                                                                  .circular(
                                                                      10.0),
                                                              topLeft: Radius
                                                                  .circular(
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
                                      ])))));
                    }))),

        //FEATURED DEALS
        SliverToBoxAdapter(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Text('Featured Deals',
                      style: AppTextStyle.categoryHeaderStyle)),
              InkWell(
                  borderRadius: BorderRadius.circular(5.0),
                  splashColor: Theme.of(context).primaryColorLight,
                  onTap: () => Get.toNamed(AppRoute.VIEW_ALL),
                  child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child:
                          Text('View All', style: AppTextStyle.viewAllStyle)))
            ])),
        SliverToBoxAdapter(
            child: Container(
                height: 236.h,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: Card(
                              color: Colors.white,
                              child: InkWell(
                                  borderRadius: BorderRadius.circular(5.0),
                                  splashColor:
                                      Theme.of(context).primaryColorLight,
                                  onTap: () =>
                                      Get.toNamed(AppRoute.PRODUCT_DETAIL),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5.0))),
                                      width: 150.w,
                                      child: Column(children: [
                                        Padding(
                                            padding: EdgeInsets.all(5),
                                            child: Column(children: [
                                              Align(
                                                  alignment: Alignment.topRight,
                                                  child: CircleAvatar(
                                                      backgroundColor: Colors
                                                          .grey
                                                          .withOpacity(0.1),
                                                      maxRadius: 15,
                                                      child: Icon(
                                                          LineIcons.heart,
                                                          size: 15))),
                                              SizedBox(height: 15.h),
                                              Image.asset(
                                                  ImageAsset.product2IconAsset,
                                                  width: 90.w,
                                                  height: 90.h),
                                              SizedBox(height: 10.h),
                                              Text('Red Label Tea Leaf',
                                                  style: AppTextStyle
                                                      .categoryNameStyle),
                                              Text('1 KG',
                                                  style:
                                                      AppTextStyle.weightStyle)
                                            ])),
                                        SizedBox(height: 5.h),
                                        Expanded(
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                              Padding(
                                                  padding: EdgeInsets.all(5),
                                                  child: Text('\u20A8. 10',
                                                      style: AppTextStyle
                                                          .priceStyle)),
                                              Container(
                                                  padding: EdgeInsets.all(8),
                                                  decoration: BoxDecoration(
                                                      color: AppColors
                                                          .primaryColor,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              bottomRight: Radius
                                                                  .circular(
                                                                      10.0),
                                                              topLeft: Radius
                                                                  .circular(
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
                                      ])))));
                    })))
      ]));

  _drawerHeader() => DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(color: AppColors.primaryColor),
      child: Column(children: [
        CircleAvatar(
            radius: 40,
            backgroundColor: Colors.grey.withOpacity(0.1),
            backgroundImage: ExactAssetImage(ImageAsset.profilePictureAsset)),
        SizedBox(height: 10.h),
        Text('Kamlesh', style: AppTextStyle.drawerUserNameStyle),
        Text('kamal.lakhani56@gmail.com'.toLowerCase(),
            style: AppTextStyle.drawerEmailStyle)
      ]));

  _drawerMenu({String? title, Function()? onTap}) => ListTile(
      title: Text(title!, style: AppTextStyle.drawerMenuStyle), onTap: onTap);

  _slider() => Container(
      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      height: 130.h,
      child: PageView.builder(
          itemBuilder: (context, position) {
            return Container(
                padding: EdgeInsets.all(10),
                color: AppColors.primaryColor.withOpacity(0.1),
                child: Row(children: [
                  SvgPicture.asset(ImageAsset.sliderAllFruitIconAsset,
                      width: 130.h),
                  Expanded(
                      flex: 1,
                      child: Column(children: [
                        Text('Grocery Store',
                            style: AppTextStyle.titleSliderStyle),
                        SizedBox(height: 10.h),
                        Text('Description',
                            style: AppTextStyle.descriptionSliderStyle)
                      ]))
                ]));
          },
          itemCount: 2));
}