import '../srkr_profile_screen/widgets/srkr_profile_item_widget.dart';
import 'bloc/srkr_profile_bloc.dart';
import 'models/srkr_profile_item_model.dart';
import 'models/srkr_profile_model.dart';
import 'package:csd_flutter_application/core/app_export.dart';
import 'package:csd_flutter_application/widgets/app_bar/appbar_iconbutton.dart';
import 'package:csd_flutter_application/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:csd_flutter_application/widgets/app_bar/custom_app_bar.dart';
import 'package:csd_flutter_application/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SrkrProfileScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SrkrProfileBloc>(
        create: (context) => SrkrProfileBloc(
            SrkrProfileState(srkrProfileModelObj: SrkrProfileModel()))
          ..add(SrkrProfileInitialEvent()),
        child: SrkrProfileScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            appBar: CustomAppBar(
                height: getVerticalSize(66),
                leadingWidth: 64,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 20, top: 5, bottom: 6),
                    onTap: () {
                      onTapArrowleft1(context);
                    }),
                actions: [
                  AppbarIconbutton1(
                      svgPath: ImageConstant.imgHugeicon,
                      margin: getMargin(left: 12, top: 5, right: 12, bottom: 6),
                      onTap: () {
                        onTapHugeicon1(context);
                      })
                ]),
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgLoginscreenthree),
                        fit: BoxFit.cover)),
                child: Container(
                    height: getVerticalSize(651),
                    width: getHorizontalSize(394),
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              height: getVerticalSize(624),
                              width: getHorizontalSize(393),
                              decoration: BoxDecoration(
                                  color: ColorConstant.gray5001,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(
                                          getHorizontalSize(50)),
                                      topRight: Radius.circular(
                                          getHorizontalSize(50)))))),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    color: ColorConstant.whiteA700,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder48),
                                    child: Container(
                                        height: getSize(96),
                                        width: getSize(96),
                                        padding: getPadding(all: 5),
                                        decoration: AppDecoration.fillWhiteA700
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder48),
                                        child: Stack(children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgProfilepicture85x85,
                                              height: getSize(85),
                                              width: getSize(85),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(42)),
                                              alignment: Alignment.center)
                                        ]))),
                                Padding(
                                    padding: getPadding(top: 10),
                                    child: Text("lbl_srkrec".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsBold16)),
                                Container(
                                    width: getHorizontalSize(284),
                                    margin:
                                        getMargin(left: 54, top: 15, right: 54),
                                    child: Text("msg_my_name_is_catherine".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtPoppinsRegular1312)),
                                Padding(
                                    padding: getPadding(top: 9),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomButton(
                                              height: getVerticalSize(40),
                                              width: getHorizontalSize(121),
                                              text: "lbl_about".tr,
                                              variant: ButtonVariant
                                                  .OutlineBlue4007f,
                                              fontStyle: ButtonFontStyle
                                                  .PoppinsMedium1312,
                                              onTap: () {
                                                onTapAbout(context);
                                              }),
                                          CustomButton(
                                              height: getVerticalSize(40),
                                              width: getHorizontalSize(121),
                                              text: "lbl_group_message".tr,
                                              margin: getMargin(left: 20),
                                              variant: ButtonVariant
                                                  .OutlineBlack9003f,
                                              fontStyle: ButtonFontStyle
                                                  .PoppinsMedium1312Black900)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("lbl_all".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular1312Black900),
                                                    Container(
                                                        height:
                                                            getVerticalSize(3),
                                                        width:
                                                            getHorizontalSize(
                                                                15),
                                                        margin:
                                                            getMargin(top: 1),
                                                        decoration: BoxDecoration(
                                                            color: ColorConstant
                                                                .blueGray500,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        getHorizontalSize(
                                                                            1))))
                                                  ])),
                                          Padding(
                                              padding: getPadding(
                                                  left: 30, bottom: 6),
                                              child: Text("lbl_photos".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular1312Black900)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 30, bottom: 6),
                                              child: Text("lbl_videos".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular1312Black900))
                                        ])),
                                Expanded(
                                    child: Container(
                                        decoration: AppDecoration
                                            .outlineBluegray100
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderTL50),
                                        child: BlocSelector<
                                                SrkrProfileBloc,
                                                SrkrProfileState,
                                                SrkrProfileModel?>(
                                            selector: (state) =>
                                                state.srkrProfileModelObj,
                                            builder:
                                                (context, srkrProfileModelObj) {
                                              return GridView.builder(
                                                  shrinkWrap: true,
                                                  gridDelegate:
                                                      SliverGridDelegateWithFixedCrossAxisCount(
                                                          mainAxisExtent:
                                                              getVerticalSize(
                                                                  119),
                                                          crossAxisCount: 3,
                                                          mainAxisSpacing:
                                                              getHorizontalSize(
                                                                  16),
                                                          crossAxisSpacing:
                                                              getHorizontalSize(
                                                                  16)),
                                                  physics:
                                                      BouncingScrollPhysics(),
                                                  itemCount: srkrProfileModelObj
                                                          ?.srkrProfileItemList
                                                          .length ??
                                                      0,
                                                  itemBuilder:
                                                      (context, index) {
                                                    SrkrProfileItemModel model =
                                                        srkrProfileModelObj
                                                                    ?.srkrProfileItemList[
                                                                index] ??
                                                            SrkrProfileItemModel();
                                                    return SrkrProfileItemWidget(
                                                        model);
                                                  });
                                            })))
                              ]))
                    ])))));
  }

  onTapAbout(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.underProgressScreen,
    );
  }

  onTapArrowleft1(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapHugeicon1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.studentProfileScreen,
    );
  }
}
