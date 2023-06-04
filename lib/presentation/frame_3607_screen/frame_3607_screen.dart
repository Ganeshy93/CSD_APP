import 'bloc/frame_3607_bloc.dart';
import 'models/frame_3607_model.dart';
import 'package:csd_flutter_application/core/app_export.dart';
import 'package:csd_flutter_application/widgets/app_bar/appbar_image.dart';
import 'package:csd_flutter_application/widgets/app_bar/appbar_title.dart';
import 'package:csd_flutter_application/widgets/app_bar/custom_app_bar.dart';
import 'package:csd_flutter_application/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Frame3607Screen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<Frame3607Bloc>(
        create: (context) =>
            Frame3607Bloc(Frame3607State(frame3607ModelObj: Frame3607Model()))
              ..add(Frame3607InitialEvent()),
        child: Frame3607Screen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Frame3607Bloc, Frame3607State>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  height: getVerticalSize(735),
                  width: getHorizontalSize(394),
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                            padding: getPadding(bottom: 61),
                            child: Text("lbl_follow_us_on".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle
                                    .txtBeVietnamProRegular10Black900))),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            padding: getPadding(top: 23, bottom: 23),
                            decoration: AppDecoration.outlineBlack9008,
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomAppBar(
                                      height: getVerticalSize(39),
                                      leadingWidth: 43,
                                      leading: AppbarImage(
                                          height: getSize(21),
                                          width: getSize(21),
                                          svgPath: ImageConstant.imgClose,
                                          margin: getMargin(
                                              left: 22, top: 13, bottom: 4),
                                          onTap: () {
                                            onTapClose1(context);
                                          }),
                                      centerTitle: true,
                                      title: AppbarTitle(text: "lbl_csd".tr)),
                                  GestureDetector(
                                      onTap: () {
                                        onTapStackellipse166(context);
                                      },
                                      child: Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: getMargin(top: 31),
                                          color: ColorConstant.whiteA700,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder55),
                                          child: Container(
                                              height: getSize(108),
                                              width: getSize(108),
                                              padding: getPadding(all: 6),
                                              decoration: AppDecoration
                                                  .fillWhiteA700
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder55),
                                              child: Stack(children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgEllipse162,
                                                    height: getSize(96),
                                                    width: getSize(96),
                                                    radius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                48)),
                                                    alignment: Alignment.center)
                                              ])))),
                                  CustomButton(
                                      text: "lbl_home".tr,
                                      margin: getMargin(
                                          left: 48, top: 28, right: 45),
                                      shape: ButtonShape.Square,
                                      onTap: () {
                                        onTapHome(context);
                                      }),
                                  CustomButton(
                                      text: "lbl_srkr_profile".tr,
                                      margin: getMargin(
                                          left: 48, top: 11, right: 45),
                                      shape: ButtonShape.Square,
                                      onTap: () {
                                        onTapSrkrprofile(context);
                                      }),
                                  CustomButton(
                                      text: "lbl_csd_profile".tr,
                                      margin: getMargin(
                                          left: 48, top: 11, right: 45),
                                      shape: ButtonShape.Square,
                                      onTap: () {
                                        onTapCsdprofile(context);
                                      }),
                                  GestureDetector(
                                      onTap: () {
                                        onTapStackevents(context);
                                      },
                                      child: Container(
                                          height: getVerticalSize(44),
                                          width: getHorizontalSize(301),
                                          margin: getMargin(top: 11),
                                          padding:
                                              getPadding(top: 7, bottom: 7),
                                          decoration:
                                              AppDecoration.outlineBlack90010,
                                          child: Stack(
                                              alignment: Alignment.topCenter,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Text("lbl_events".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtMSUIGothic24)),
                                                Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Text("lbl_events".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtMSUIGothic24))
                                              ]))),
                                  CustomButton(
                                      text: "lbl_about_us".tr,
                                      margin: getMargin(
                                          left: 48, top: 11, right: 45),
                                      shape: ButtonShape.Square,
                                      onTap: () {
                                        onTapAboutus(context);
                                      }),
                                  CustomButton(
                                      text: "lbl_portals".tr,
                                      margin: getMargin(
                                          left: 48, top: 11, right: 45),
                                      shape: ButtonShape.Square,
                                      onTap: () {
                                        onTapPortals(context);
                                      }),
                                  CustomButton(
                                      text: "lbl_contact_us".tr,
                                      margin: getMargin(
                                          left: 48, top: 14, right: 45),
                                      shape: ButtonShape.Square,
                                      onTap: () {
                                        onTapContactus(context);
                                      }),
                                  Padding(
                                      padding: getPadding(top: 67, bottom: 5),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgInstagram,
                                                height: getVerticalSize(31),
                                                width: getHorizontalSize(28)),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgFacebook,
                                                height: getVerticalSize(31),
                                                width: getHorizontalSize(27),
                                                margin: getMargin(left: 10)),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgLinkedin,
                                                height: getVerticalSize(31),
                                                width: getHorizontalSize(28),
                                                margin: getMargin(left: 10))
                                          ]))
                                ])))
                  ]))));
    });
  }

  onTapClose1(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapStackellipse166(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.csdProfileScreen,
    );
  }

  onTapHome(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }

  onTapSrkrprofile(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.srkrProfileScreen,
    );
  }

  onTapCsdprofile(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.csdProfileScreen,
    );
  }

  onTapStackevents(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.eventsScreen,
    );
  }

  onTapAboutus(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.underProgresTwoScreen,
    );
  }

  onTapPortals(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.portalsScreen,
    );
  }

  onTapContactus(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.underProgressScreen,
    );
  }
}
