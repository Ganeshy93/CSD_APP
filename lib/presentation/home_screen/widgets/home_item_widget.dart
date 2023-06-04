import '../models/home_item_model.dart';
import 'package:csd_flutter_application/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeItemWidget extends StatelessWidget {
  HomeItemWidget(
    this.homeItemModelObj, {
    this.onTapStackunsplashh6,
  });

  HomeItemModel homeItemModelObj;

  VoidCallback? onTapStackunsplashh6;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Container(
        padding: getPadding(
          left: 9,
          top: 4,
          right: 9,
          bottom: 4,
        ),
        decoration: AppDecoration.fillBlue50.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: getPadding(
                left: 11,
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      onTapStackunsplashh6?.call();
                    },
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: getMargin(
                        top: 2,
                      ),
                      color: ColorConstant.whiteA700,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusStyle.circleBorder22,
                      ),
                      child: Container(
                        height: getSize(
                          40,
                        ),
                        width: getSize(
                          40,
                        ),
                        padding: getPadding(
                          all: 2,
                        ),
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder22,
                        ),
                        child: Stack(
                          children: [
                            CustomImageView(
                              imagePath:
                                  ImageConstant.imgUnsplashh6wpor9mjs36x36,
                              height: getSize(
                                36,
                              ),
                              width: getSize(
                                36,
                              ),
                              radius: BorderRadius.circular(
                                getHorizontalSize(
                                  18,
                                ),
                              ),
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      86,
                    ),
                    margin: getMargin(
                      left: 10,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_srkrec_csd".tr,
                            style: TextStyle(
                              color: ColorConstant.black900,
                              fontSize: getFontSize(
                                16,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: "lbl_srkrcsd2".tr,
                            style: TextStyle(
                              color: ColorConstant.blueGray500,
                              fontSize: getFontSize(
                                15.141729354858398,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: getHorizontalSize(
                341,
              ),
              margin: getMargin(
                left: 9,
                top: 3,
                right: 3,
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_freedom_fest_under2".tr,
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: "lbl_freedomfest".tr,
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: " ",
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: "lbl_swecha".tr,
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: " ",
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: "msg_swechafoundation".tr,
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: "lbl_srkrec2".tr,
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: " ",
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: "msg_sagiramakrishn".tr,
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: " ",
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: "lbl_university".tr,
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: " ",
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: "msg_srkrengineeringcollege".tr,
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: " ",
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: "lbl_bhimavaram".tr,
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: " ",
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: "lbl_btech".tr,
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: " ",
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: "lbl_mtech".tr,
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: " ",
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: "lbl_phd".tr,
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: " ",
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: "lbl_bestcollege".tr,
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: " ",
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: "lbl_cse".tr,
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: " ",
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: "lbl_civil".tr,
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: " ",
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: "lbl_mech".tr,
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: " ",
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: "lbl_csd2".tr,
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: " ",
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: "lbl_ece".tr,
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: " ",
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: "lbl_eee".tr,
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: " ",
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: "lbl_it".tr,
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: " ",
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: "lbl_srkrcsd3".tr,
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: " ",
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: "lbl_srkriste".tr,
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              height: getVerticalSize(
                334,
              ),
              width: getHorizontalSize(
                353,
              ),
              margin: getMargin(
                left: 1,
                top: 6,
                bottom: 27,
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: getVerticalSize(
                        334,
                      ),
                      width: getHorizontalSize(
                        353,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgUnsplashmbqifklvowm,
                            height: getVerticalSize(
                              334,
                            ),
                            width: getHorizontalSize(
                              353,
                            ),
                            radius: BorderRadius.circular(
                              getHorizontalSize(
                                10,
                              ),
                            ),
                            alignment: Alignment.center,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgUnsplashmbqifklvowm,
                            height: getVerticalSize(
                              334,
                            ),
                            width: getHorizontalSize(
                              353,
                            ),
                            radius: BorderRadius.circular(
                              getHorizontalSize(
                                10,
                              ),
                            ),
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: getMargin(
                        top: 288,
                      ),
                      padding: getPadding(
                        left: 19,
                        top: 9,
                        right: 19,
                        bottom: 9,
                      ),
                      decoration: AppDecoration.fillBlack9004c.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgUserWhiteA700,
                            height: getSize(
                              24,
                            ),
                            width: getSize(
                              24,
                            ),
                            margin: getMargin(
                              left: 1,
                              top: 3,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 6,
                              top: 1,
                            ),
                            child: Text(
                              "lbl_10".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold1716WhiteA700cc,
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgHugeiconWhiteA70024x24,
                            height: getSize(
                              24,
                            ),
                            width: getSize(
                              24,
                            ),
                            margin: getMargin(
                              left: 9,
                              top: 3,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 6,
                              top: 1,
                            ),
                            child: Text(
                              "lbl_122".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold1716WhiteA700cc,
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            svgPath: ImageConstant.imgVolume,
                            height: getSize(
                              24,
                            ),
                            width: getSize(
                              24,
                            ),
                            margin: getMargin(
                              top: 3,
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgHugeicon24x24,
                            height: getSize(
                              24,
                            ),
                            width: getSize(
                              24,
                            ),
                            margin: getMargin(
                              left: 9,
                              top: 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
