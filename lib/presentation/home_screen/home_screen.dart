import '../home_screen/widgets/home_item_widget.dart';
import 'bloc/home_bloc.dart';
import 'models/home_item_model.dart';
import 'models/home_model.dart';
import 'package:csd_flutter_application/core/app_export.dart';
import 'package:csd_flutter_application/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:csd_flutter_application/widgets/app_bar/appbar_image.dart';
import 'package:csd_flutter_application/widgets/app_bar/appbar_title.dart';
import 'package:csd_flutter_application/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(HomeState(homeModelObj: HomeModel()))
          ..add(HomeInitialEvent()),
        child: HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            appBar: CustomAppBar(
                height: getVerticalSize(63),
                leadingWidth: 42,
                leading: Container(
                    height: getVerticalSize(16),
                    width: getHorizontalSize(17),
                    margin: getMargin(left: 25, top: 20, bottom: 27),
                    child: Stack(alignment: Alignment.topCenter, children: [
                      AppbarImage(
                          height: getVerticalSize(16),
                          width: getHorizontalSize(17),
                          svgPath: ImageConstant.imgFolder,
                          onTap: () {
                            onTapFolder(context);
                          }),
                      AppbarImage(
                          height: getVerticalSize(16),
                          width: getHorizontalSize(17),
                          svgPath: ImageConstant.imgFolder)
                    ])),
                centerTitle: true,
                title: Container(
                    height: getVerticalSize(39),
                    width: getHorizontalSize(69),
                    child: Stack(alignment: Alignment.topCenter, children: [
                      AppbarTitle(text: "lbl_csd".tr),
                      AppbarTitle(text: "lbl_csd".tr)
                    ])),
                actions: [
                  Container(
                      height: getSize(44),
                      width: getSize(44),
                      margin:
                          getMargin(left: 20, top: 8, right: 20, bottom: 11),
                      child: Stack(alignment: Alignment.topCenter, children: [
                        AppbarIconbutton2(
                            imagePath: ImageConstant.imgHugeicon44x44,
                            onTap: () {
                              onTapHugeicon3(context);
                            }),
                        AppbarIconbutton2(
                            imagePath: ImageConstant.imgHugeicon44x44)
                      ]))
                ],
                styleType: Style.bgShadowBlack9003f),
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup69),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(top: 19, bottom: 19),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              padding: getPadding(left: 10, top: 12),
                              child: IntrinsicWidth(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                    Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: EdgeInsets.all(0),
                                              color: ColorConstant.whiteA700,
                                              shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                      color: ColorConstant
                                                          .indigo300,
                                                      width:
                                                          getHorizontalSize(2)),
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .circleBorder35),
                                              child: Container(
                                                  height: getSize(70),
                                                  width: getSize(70),
                                                  padding: getPadding(all: 5),
                                                  decoration: AppDecoration
                                                      .outlineIndigo300
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .circleBorder35),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgUnsplashbqe0j0b26rq,
                                                            height: getSize(60),
                                                            width: getSize(60),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        30)),
                                                            alignment: Alignment
                                                                .center),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgHugeiconWhiteA700,
                                                            height: getSize(24),
                                                            width: getSize(24),
                                                            alignment: Alignment
                                                                .center)
                                                      ]))),
                                          Text("lbl_you".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsSemiBold1312)
                                        ]),
                                    Padding(
                                        padding: getPadding(left: 20),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: EdgeInsets.all(0),
                                                  color:
                                                      ColorConstant.whiteA700,
                                                  shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                          color: ColorConstant
                                                              .indigo300,
                                                          width:
                                                              getHorizontalSize(
                                                                  2)),
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder35),
                                                  child: Container(
                                                      height: getSize(70),
                                                      width: getSize(70),
                                                      padding:
                                                          getPadding(all: 5),
                                                      decoration: AppDecoration
                                                          .outlineIndigo300
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .circleBorder35),
                                                      child: Stack(children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgUnsplashilip77sbmoe60x60,
                                                            height: getSize(60),
                                                            width: getSize(60),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        30)),
                                                            alignment: Alignment
                                                                .center)
                                                      ]))),
                                              Text("lbl_winners".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsSemiBold1312)
                                            ])),
                                    Padding(
                                        padding: getPadding(left: 20),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: EdgeInsets.all(0),
                                                  color:
                                                      ColorConstant.whiteA700,
                                                  shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                          color: ColorConstant
                                                              .indigo300,
                                                          width:
                                                              getHorizontalSize(
                                                                  2)),
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder35),
                                                  child: Container(
                                                      height: getSize(70),
                                                      width: getSize(70),
                                                      padding:
                                                          getPadding(all: 5),
                                                      decoration: AppDecoration
                                                          .outlineIndigo300
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .circleBorder35),
                                                      child: Stack(children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgUnsplashj1oscmuhuq,
                                                            height: getSize(60),
                                                            width: getSize(60),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        30)),
                                                            alignment: Alignment
                                                                .center)
                                                      ]))),
                                              Text("lbl_naac_a".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsSemiBold1312)
                                            ])),
                                    Padding(
                                        padding: getPadding(left: 20),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: EdgeInsets.all(0),
                                                  color:
                                                      ColorConstant.whiteA700,
                                                  shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                          color: ColorConstant
                                                              .indigo300,
                                                          width:
                                                              getHorizontalSize(
                                                                  2)),
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder35),
                                                  child: Container(
                                                      height: getSize(70),
                                                      width: getSize(70),
                                                      padding:
                                                          getPadding(all: 5),
                                                      decoration: AppDecoration
                                                          .outlineIndigo300
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .circleBorder35),
                                                      child: Stack(children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgUnsplashjomlc1wane,
                                                            height: getSize(60),
                                                            width: getSize(60),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        30)),
                                                            alignment: Alignment
                                                                .center)
                                                      ]))),
                                              Text("lbl_tech_talks".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsSemiBold1312)
                                            ])),
                                    Padding(
                                        padding: getPadding(left: 20),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: EdgeInsets.all(0),
                                                  color:
                                                      ColorConstant.whiteA700,
                                                  shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                          color: ColorConstant
                                                              .indigo300,
                                                          width:
                                                              getHorizontalSize(
                                                                  2)),
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder35),
                                                  child: Container(
                                                      height: getSize(70),
                                                      width: getSize(70),
                                                      padding:
                                                          getPadding(all: 5),
                                                      decoration: AppDecoration
                                                          .outlineIndigo300
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .circleBorder35),
                                                      child: Stack(children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgUnsplashh6wpor9mjs,
                                                            height: getSize(60),
                                                            width: getSize(60),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        30)),
                                                            alignment: Alignment
                                                                .center)
                                                      ]))),
                                              Text("lbl_claire".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: AppStyle
                                                      .txtPoppinsSemiBold1312)
                                            ]))
                                  ]))),
                          Expanded(
                              child: Padding(
                                  padding:
                                      getPadding(left: 8, top: 19, right: 6),
                                  child: BlocSelector<HomeBloc, HomeState,
                                          HomeModel?>(
                                      selector: (state) => state.homeModelObj,
                                      builder: (context, homeModelObj) {
                                        return ListView.separated(
                                            physics: BouncingScrollPhysics(),
                                            shrinkWrap: true,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  height: getVerticalSize(20));
                                            },
                                            itemCount: homeModelObj
                                                    ?.homeItemList.length ??
                                                0,
                                            itemBuilder: (context, index) {
                                              HomeItemModel model = homeModelObj
                                                      ?.homeItemList[index] ??
                                                  HomeItemModel();
                                              return HomeItemWidget(model,
                                                  onTapStackunsplashh6: () {
                                                onTapStackunsplashh6(context);
                                              });
                                            });
                                      })))
                        ])))));
  }

  onTapStackunsplashh6(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.srkrProfileScreen);
  }

  onTapFolder(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.frame3607Screen,
    );
  }

  onTapHugeicon3(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.studentProfileScreen,
    );
  }
}
