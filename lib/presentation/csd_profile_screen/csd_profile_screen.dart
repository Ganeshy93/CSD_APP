import '../csd_profile_screen/widgets/csd_profile_item_widget.dart';
import 'bloc/csd_profile_bloc.dart';
import 'models/csd_profile_item_model.dart';
import 'models/csd_profile_model.dart';
import 'package:csd_flutter_application/core/app_export.dart';
import 'package:csd_flutter_application/widgets/app_bar/appbar_iconbutton.dart';
import 'package:csd_flutter_application/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:csd_flutter_application/widgets/app_bar/custom_app_bar.dart';
import 'package:csd_flutter_application/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CsdProfileScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<CsdProfileBloc>(
        create: (context) => CsdProfileBloc(
            CsdProfileState(csdProfileModelObj: CsdProfileModel()))
          ..add(CsdProfileInitialEvent()),
        child: CsdProfileScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgLoginscreenthree),
                        fit: BoxFit.cover)),
                child: Container(
                    height: getVerticalSize(718),
                    width: getHorizontalSize(394),
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomAppBar(
                                    height: getVerticalSize(60),
                                    leadingWidth: 60,
                                    leading: AppbarIconbutton(
                                        svgPath: ImageConstant.imgArrowleft,
                                        margin: getMargin(left: 16),
                                        onTap: () {
                                          onTapArrowleft(context);
                                        }),
                                    actions: [
                                      AppbarIconbutton1(
                                          svgPath: ImageConstant.imgHugeicon,
                                          margin:
                                              getMargin(left: 16, right: 16),
                                          onTap: () {
                                            onTapHugeicon(context);
                                          })
                                    ]),
                                Container(
                                    height: getVerticalSize(689),
                                    width: getHorizontalSize(393),
                                    margin: getMargin(top: 50),
                                    child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                  padding: getPadding(
                                                      left: 50,
                                                      top: 42,
                                                      right: 50,
                                                      bottom: 42),
                                                  decoration: AppDecoration
                                                      .fillGray5001
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .customBorderTL50),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("lbl_srkrec".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsBold16),
                                                        Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    284),
                                                            margin: getMargin(
                                                                top: 15,
                                                                right: 7),
                                                            child: Text(
                                                                "msg_my_name_is_catherine"
                                                                    .tr,
                                                                maxLines: null,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: AppStyle
                                                                    .txtPoppinsRegular1312)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 10,
                                                                top: 9,
                                                                right: 18),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Expanded(
                                                                      child: CustomButton(
                                                                          height: getVerticalSize(40),
                                                                          text: "lbl_about".tr,
                                                                          margin: getMargin(right: 10),
                                                                          variant: ButtonVariant.OutlineBlue4007f,
                                                                          fontStyle: ButtonFontStyle.PoppinsMedium1312,
                                                                          onTap: () {
                                                                            onTapAbout(context);
                                                                          })),
                                                                  Expanded(
                                                                      child: CustomButton(
                                                                          height: getVerticalSize(
                                                                              40),
                                                                          text: "lbl_group_message"
                                                                              .tr,
                                                                          margin: getMargin(
                                                                              left:
                                                                                  10),
                                                                          variant: ButtonVariant
                                                                              .OutlineBlack9003f,
                                                                          fontStyle:
                                                                              ButtonFontStyle.PoppinsMedium1312Black900))
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 21,
                                                                bottom: 359),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              1),
                                                                      child: Column(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            Text("lbl_all".tr,
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: AppStyle.txtPoppinsRegular1312Black900),
                                                                            Container(
                                                                                height: getVerticalSize(3),
                                                                                width: getHorizontalSize(15),
                                                                                margin: getMargin(top: 1),
                                                                                decoration: BoxDecoration(color: ColorConstant.blueGray500, borderRadius: BorderRadius.circular(getHorizontalSize(1))))
                                                                          ])),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              30,
                                                                          bottom:
                                                                              6),
                                                                      child: Text(
                                                                          "lbl_photos"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtPoppinsRegular1312Black900)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              30,
                                                                          bottom:
                                                                              6),
                                                                      child: Text(
                                                                          "lbl_videos"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtPoppinsRegular1312Black900))
                                                                ]))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: EdgeInsets.all(0),
                                                  color:
                                                      ColorConstant.whiteA700,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder48),
                                                  child: Container(
                                                      height: getSize(96),
                                                      width: getSize(96),
                                                      padding:
                                                          getPadding(all: 5),
                                                      decoration: AppDecoration
                                                          .fillWhiteA700
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .circleBorder48),
                                                      child: Stack(children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgProfilepicture,
                                                            height: getSize(85),
                                                            width: getSize(85),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        42)),
                                                            alignment: Alignment
                                                                .center)
                                                      ]))))
                                        ]))
                              ])),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              margin: getMargin(top: 408),
                              padding: getPadding(
                                  left: 12, top: 34, right: 12, bottom: 34),
                              decoration: AppDecoration.outlineBluegray100
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL50),
                              child: BlocSelector<CsdProfileBloc,
                                      CsdProfileState, CsdProfileModel?>(
                                  selector: (state) => state.csdProfileModelObj,
                                  builder: (context, csdProfileModelObj) {
                                    return ListView.separated(
                                        physics: BouncingScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(22));
                                        },
                                        itemCount: csdProfileModelObj
                                                ?.csdProfileItemList.length ??
                                            0,
                                        itemBuilder: (context, index) {
                                          CsdProfileItemModel model =
                                              csdProfileModelObj
                                                          ?.csdProfileItemList[
                                                      index] ??
                                                  CsdProfileItemModel();
                                          return CsdProfileItemWidget(model);
                                        });
                                  })))
                    ])))));
  }

  onTapArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapHugeicon(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.studentProfileScreen,
    );
  }

  onTapAbout(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.underProgressScreen,
    );
  }
}
