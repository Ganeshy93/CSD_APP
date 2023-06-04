import 'bloc/splash_bloc.dart';
import 'models/splash_model.dart';
import 'package:csd_flutter_application/core/app_export.dart';
import 'package:csd_flutter_application/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SplashBloc>(
        create: (context) =>
            SplashBloc(SplashState(splashModelObj: SplashModel()))
              ..add(SplashInitialEvent()),
        child: SplashScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashBloc, SplashState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.black900,
              body: Container(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            height: getVerticalSize(392),
                            width: double.maxFinite,
                            child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                          height: getVerticalSize(294),
                                          width: double.maxFinite,
                                          child: Stack(
                                              alignment: Alignment.bottomRight,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgEllipse12,
                                                    height:
                                                        getVerticalSize(294),
                                                    width:
                                                        getHorizontalSize(390),
                                                    alignment:
                                                        Alignment.center),
                                                Align(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    child: Padding(
                                                        padding: getPadding(
                                                            right: 2,
                                                            bottom: 30),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgUntitled3,
                                                                  height:
                                                                      getVerticalSize(
                                                                          28),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          25),
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight),
                                                              Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          29),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          35),
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              67),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                          color:
                                                                              ColorConstant.red7007e))
                                                            ])))
                                              ]))),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgOther0111,
                                      height: getVerticalSize(74),
                                      width: getHorizontalSize(71),
                                      alignment: Alignment.bottomLeft,
                                      margin: getMargin(left: 2, bottom: 97)),
                                  Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Container(
                                          height: getVerticalSize(351),
                                          width: getHorizontalSize(343),
                                          margin: getMargin(left: 10),
                                          decoration:
                                              AppDecoration.outlineBlack90096,
                                          child: Stack(
                                              alignment: Alignment.centerRight,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    child: Container(
                                                        height: getVerticalSize(
                                                            236),
                                                        width:
                                                            getHorizontalSize(
                                                                188),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .bottomLeft,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgIkbal1,
                                                                  height:
                                                                      getVerticalSize(
                                                                          236),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          188),
                                                                  alignment:
                                                                      Alignment
                                                                          .center),
                                                              CustomImageView(
                                                                  imagePath: ImageConstant
                                                                      .imgUntitled2,
                                                                  height:
                                                                      getVerticalSize(
                                                                          50),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          46),
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomLeft,
                                                                  margin:
                                                                      getMargin(
                                                                          left:
                                                                              5,
                                                                          bottom:
                                                                              14))
                                                            ]))),
                                                Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Container(
                                                        height: getVerticalSize(
                                                            214),
                                                        width:
                                                            getHorizontalSize(
                                                                169),
                                                        margin: getMargin(
                                                            right: 70),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .bottomLeft,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgMarni2,
                                                                  height:
                                                                      getVerticalSize(
                                                                          214),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          169),
                                                                  alignment:
                                                                      Alignment
                                                                          .center),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomLeft,
                                                                  child: Container(
                                                                      height:
                                                                          getVerticalSize(
                                                                              45),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              28),
                                                                      margin: getMargin(
                                                                          left:
                                                                              25,
                                                                          bottom:
                                                                              21),
                                                                      decoration:
                                                                          BoxDecoration(
                                                                              color: ColorConstant.deepPurple8007e)))
                                                            ]))),
                                                Align(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    child: Container(
                                                        height:
                                                            getVerticalSize(91),
                                                        width:
                                                            getHorizontalSize(
                                                                72),
                                                        margin: getMargin(
                                                            left: 112,
                                                            bottom: 13),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .topRight,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgOther0115,
                                                                  height:
                                                                      getVerticalSize(
                                                                          91),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          72),
                                                                  alignment:
                                                                      Alignment
                                                                          .center),
                                                              CustomImageView(
                                                                  imagePath: ImageConstant
                                                                      .imgUntitled2,
                                                                  height:
                                                                      getVerticalSize(
                                                                          11),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          10),
                                                                  alignment:
                                                                      Alignment
                                                                          .topRight,
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              2,
                                                                          right:
                                                                              9))
                                                            ]))),
                                                Align(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    child: Container(
                                                        height:
                                                            getVerticalSize(8),
                                                        width:
                                                            getHorizontalSize(
                                                                15),
                                                        margin: getMargin(
                                                            left: 101,
                                                            bottom: 160),
                                                        decoration: BoxDecoration(
                                                            color: ColorConstant
                                                                .pink80087))),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgOther013,
                                                    height: getVerticalSize(91),
                                                    width:
                                                        getHorizontalSize(73),
                                                    alignment:
                                                        Alignment.topRight,
                                                    margin:
                                                        getMargin(right: 70)),
                                                Align(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    child: Container(
                                                        height: getVerticalSize(
                                                            208),
                                                        width:
                                                            getHorizontalSize(
                                                                165),
                                                        margin: getMargin(
                                                            bottom: 15),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .bottomLeft,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgBadrun4,
                                                                  height:
                                                                      getVerticalSize(
                                                                          208),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          165),
                                                                  alignment:
                                                                      Alignment
                                                                          .center),
                                                              CustomImageView(
                                                                  imagePath: ImageConstant
                                                                      .imgUntitled,
                                                                  height:
                                                                      getVerticalSize(
                                                                          27),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          20),
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomLeft,
                                                                  margin: getMargin(
                                                                      left: 32,
                                                                      bottom:
                                                                          59))
                                                            ]))),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgUntitled,
                                                    height: getVerticalSize(27),
                                                    width:
                                                        getHorizontalSize(20),
                                                    alignment:
                                                        Alignment.topLeft,
                                                    margin: getMargin(
                                                        left: 80, top: 77)),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgUntitled2,
                                                    height: getVerticalSize(11),
                                                    width:
                                                        getHorizontalSize(10),
                                                    alignment:
                                                        Alignment.topLeft,
                                                    margin: getMargin(
                                                        left: 150, top: 49)),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgOther0118,
                                                    height: getVerticalSize(79),
                                                    width:
                                                        getHorizontalSize(63),
                                                    alignment:
                                                        Alignment.topLeft,
                                                    margin: getMargin(
                                                        left: 101, top: 127))
                                              ])))
                                ])),
                        Container(
                            width: getHorizontalSize(290),
                            margin: getMargin(left: 59, top: 75, right: 41),
                            decoration: AppDecoration.txtOutlineBlack9003f,
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "msg_computer_science2".tr,
                                      style: TextStyle(
                                          color: ColorConstant.tealA100,
                                          fontSize: getFontSize(32),
                                          fontFamily: 'Arya',
                                          fontWeight: FontWeight.w400)),
                                  TextSpan(
                                      text: "lbl".tr,
                                      style: TextStyle(
                                          color: ColorConstant.whiteA700,
                                          fontSize: getFontSize(32),
                                          fontFamily: 'Arya',
                                          fontWeight: FontWeight.w400)),
                                  TextSpan(
                                      text: "lbl_design".tr,
                                      style: TextStyle(
                                          color: ColorConstant.whiteA700,
                                          fontSize: getFontSize(36),
                                          fontFamily: 'Arya',
                                          fontWeight: FontWeight.w400))
                                ]),
                                textAlign: TextAlign.center)),
                        CustomButton(
                            height: getVerticalSize(40),
                            width: getHorizontalSize(160),
                            text: "lbl_get_started".tr,
                            margin: getMargin(top: 36, bottom: 5),
                            variant: ButtonVariant.FillWhiteA700,
                            fontStyle: ButtonFontStyle.MSUIGothic18)
                      ]))));
    });
  }
}
