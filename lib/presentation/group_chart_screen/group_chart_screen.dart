import 'bloc/group_chart_bloc.dart';
import 'models/group_chart_model.dart';
import 'package:csd_flutter_application/core/app_export.dart';
import 'package:csd_flutter_application/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:csd_flutter_application/widgets/app_bar/appbar_image.dart';
import 'package:csd_flutter_application/widgets/app_bar/custom_app_bar.dart';
import 'package:csd_flutter_application/widgets/custom_button.dart';
import 'package:csd_flutter_application/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class GroupChartScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<GroupChartBloc>(
        create: (context) => GroupChartBloc(
            GroupChartState(groupChartModelObj: GroupChartModel()))
          ..add(GroupChartInitialEvent()),
        child: GroupChartScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroupChartBloc, GroupChartState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              appBar: CustomAppBar(
                  height: getVerticalSize(55),
                  leadingWidth: 66,
                  leading: AppbarImage(
                      height: getSize(53),
                      width: getSize(53),
                      imagePath: ImageConstant.imgBackto,
                      margin: getMargin(left: 13),
                      onTap: () {
                        onTapBackto(context);
                      }),
                  actions: [
                    AppbarIconbutton2(
                        imagePath: ImageConstant.imgHugeicon44x44,
                        margin:
                            getMargin(left: 15, top: 4, right: 15, bottom: 5),
                        onTap: () {
                          onTapHugeicon2(context);
                        })
                  ]),
              body: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  color: ColorConstant.whiteA700,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.circleBorder48),
                  child: Container(
                      height: getVerticalSize(760),
                      width: getHorizontalSize(394),
                      padding:
                          getPadding(left: 10, top: 7, right: 10, bottom: 7),
                      decoration: AppDecoration.fillWhiteA700.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder48),
                      child: Stack(alignment: Alignment.center, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgBackground,
                            height: getVerticalSize(743),
                            width: getHorizontalSize(374),
                            radius:
                                BorderRadius.circular(getHorizontalSize(45)),
                            alignment: Alignment.center),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: getPadding(
                                    left: 3, top: 28, right: 7, bottom: 20),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding:
                                              getPadding(left: 41, right: 9),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgUnsplashilip77sbmoe,
                                                    height: getSize(44),
                                                    width: getSize(44),
                                                    radius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                22)),
                                                    margin:
                                                        getMargin(bottom: 1),
                                                    onTap: () {
                                                      onTapImgUnsplashilip77s(
                                                          context);
                                                    }),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 12,
                                                        top: 4,
                                                        bottom: 1),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          GestureDetector(
                                                              onTap: () {
                                                                onTapTxtSrkrcsd(
                                                                    context);
                                                              },
                                                              child: Text(
                                                                  "lbl_srkrcsd"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsBold16)),
                                                          Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                      127),
                                                              child: RichText(
                                                                  text: TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                            text: "\n"
                                                                                .tr,
                                                                            style: TextStyle(
                                                                                color: ColorConstant.black900,
                                                                                fontSize: getFontSize(17.160627365112305),
                                                                                fontFamily: 'Poppins',
                                                                                fontWeight: FontWeight.w600)),
                                                                        TextSpan(
                                                                            text: "msg_last_seen_11_442"
                                                                                .tr,
                                                                            style: TextStyle(
                                                                                color: ColorConstant.black900,
                                                                                fontSize: getFontSize(15.141729354858398),
                                                                                fontFamily: 'Poppins',
                                                                                fontWeight: FontWeight.w400))
                                                                      ]),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left))
                                                        ])),
                                                CustomIconButton(
                                                    height: 44,
                                                    width: 44,
                                                    margin: getMargin(
                                                        left: 83, top: 1),
                                                    variant: IconButtonVariant
                                                        .GradientBluegray200Bluegray20000,
                                                    padding: IconButtonPadding
                                                        .PaddingAll10,
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgHugeiconWhiteA700))
                                              ])),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                              padding: getPadding(top: 19),
                                              child: Divider(
                                                  height: getVerticalSize(1),
                                                  thickness: getVerticalSize(1),
                                                  color:
                                                      ColorConstant.black90026,
                                                  indent: getHorizontalSize(11),
                                                  endIndent:
                                                      getHorizontalSize(9)))),
                                      Spacer(),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                              margin: getMargin(left: 9),
                                              padding: getPadding(
                                                  left: 14,
                                                  top: 13,
                                                  right: 14,
                                                  bottom: 13),
                                              decoration: AppDecoration
                                                  .fillWhiteA700
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .customBorderTL30),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 1),
                                                        child: Text(
                                                            "msg_hi_catherine_how"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsRegular1514))
                                                  ]))),
                                      Container(
                                          margin: getMargin(top: 20, right: 5),
                                          padding: getPadding(
                                              left: 17,
                                              top: 12,
                                              right: 17,
                                              bottom: 12),
                                          decoration: AppDecoration
                                              .fillCyan10001
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .customBorderTL301),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                    padding: getPadding(top: 1),
                                                    child: Text(
                                                        "msg_i_m_good_and_you"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular1514WhiteA700))
                                              ])),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                              margin: getMargin(
                                                  left: 9, top: 20, right: 61),
                                              padding: getPadding(all: 12),
                                              decoration: AppDecoration
                                                  .fillWhiteA700
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .customBorderTL30),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 1),
                                                        child: Text(
                                                            "msg_i_m_doing_good"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsRegular1514Bluegray10001))
                                                  ]))),
                                      CustomButton(
                                          height: getVerticalSize(50),
                                          width: getHorizontalSize(242),
                                          text: "msg_i_m_working_on_my".tr,
                                          margin: getMargin(top: 20, right: 5),
                                          variant: ButtonVariant.FillCyan100,
                                          shape: ButtonShape.CustomBorderTL30,
                                          padding: ButtonPadding.PaddingT13,
                                          fontStyle: ButtonFontStyle
                                              .PoppinsRegular1514),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                              margin: getMargin(
                                                  left: 9, top: 20, right: 61),
                                              padding: getPadding(
                                                  left: 20,
                                                  top: 12,
                                                  right: 20,
                                                  bottom: 12),
                                              decoration: AppDecoration
                                                  .fillWhiteA700
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .customBorderTL30),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 1),
                                                        child: Text(
                                                            "msg_let_s_get_lunch"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsRegular1514Black9003a))
                                                  ]))),
                                      CustomButton(
                                          height: getVerticalSize(50),
                                          width: getHorizontalSize(174),
                                          text: "msg_that_sounds_great".tr,
                                          margin: getMargin(top: 20, right: 5),
                                          variant: ButtonVariant.FillCyan100,
                                          shape: ButtonShape.CustomBorderTL30,
                                          padding: ButtonPadding.PaddingT13,
                                          fontStyle: ButtonFontStyle
                                              .PoppinsRegular1514),
                                      Container(
                                          height: getVerticalSize(44),
                                          width: getHorizontalSize(363),
                                          margin: getMargin(top: 20),
                                          child: Stack(
                                              alignment: Alignment.centerRight,
                                              children: [
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          CustomIconButton(
                                                              height: 44,
                                                              width: 44,
                                                              padding:
                                                                  IconButtonPadding
                                                                      .PaddingAll10,
                                                              child: CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgHugeiconWhiteA70044x44)),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      44),
                                                              width:
                                                                  getHorizontalSize(
                                                                      275),
                                                              decoration: BoxDecoration(
                                                                  color: ColorConstant
                                                                      .whiteA700,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              22)),
                                                                  border: Border.all(
                                                                      color: ColorConstant
                                                                          .black900,
                                                                      width:
                                                                          getHorizontalSize(
                                                                              1)),
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                        color: ColorConstant
                                                                            .black9003f,
                                                                        spreadRadius:
                                                                            getHorizontalSize(
                                                                                2),
                                                                        blurRadius:
                                                                            getHorizontalSize(
                                                                                2),
                                                                        offset: Offset(
                                                                            0,
                                                                            4))
                                                                  ]))
                                                        ])),
                                                CustomIconButton(
                                                    height: 44,
                                                    width: 44,
                                                    padding: IconButtonPadding
                                                        .PaddingAll10,
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgGroup21))
                                              ]))
                                    ])))
                      ])))));
    });
  }

  onTapImgUnsplashilip77s(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.csdProfileScreen,
    );
  }

  onTapTxtSrkrcsd(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.csdProfileScreen,
    );
  }

  onTapBackto(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }

  onTapHugeicon2(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.studentProfileScreen,
    );
  }
}
