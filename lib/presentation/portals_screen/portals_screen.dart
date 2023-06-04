import '../portals_screen/widgets/portals_item_widget.dart';
import 'bloc/portals_bloc.dart';
import 'models/portals_item_model.dart';
import 'models/portals_model.dart';
import 'package:csd_flutter_application/core/app_export.dart';
import 'package:csd_flutter_application/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:csd_flutter_application/widgets/app_bar/appbar_image.dart';
import 'package:csd_flutter_application/widgets/app_bar/custom_app_bar.dart';
import 'package:csd_flutter_application/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class PortalsScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<PortalsBloc>(
        create: (context) =>
            PortalsBloc(PortalsState(portalsModelObj: PortalsModel()))
              ..add(PortalsInitialEvent()),
        child: PortalsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(63),
                leadingWidth: 42,
                leading: AppbarImage(
                    height: getVerticalSize(16),
                    width: getHorizontalSize(17),
                    svgPath: ImageConstant.imgFolder,
                    margin: getMargin(left: 25, top: 20, bottom: 27),
                    onTap: () {
                      onTapFolder2(context);
                    }),
                actions: [
                  AppbarIconbutton2(
                      imagePath: ImageConstant.imgHugeicon44x44,
                      margin:
                          getMargin(left: 20, top: 8, right: 20, bottom: 11),
                      onTap: () {
                        onTapHugeicon5(context);
                      })
                ],
                styleType: Style.bgShadowBlack9003f),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 28),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(left: 11, right: 41),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(78),
                                        margin: getMargin(top: 4),
                                        child: Text("lbl_explore2".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtMyanmarText24)),
                                    Expanded(
                                        child: Container(
                                            margin:
                                                getMargin(left: 16, bottom: 5),
                                            padding: getPadding(all: 7),
                                            decoration: AppDecoration
                                                .outlineBlack900
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder22),
                                            child: Row(children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgSearch,
                                                  height: getSize(29),
                                                  width: getSize(29),
                                                  margin: getMargin(top: 1)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 12,
                                                      top: 7,
                                                      bottom: 4),
                                                  child: Text("lbl_search".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMulishRomanMedium14))
                                            ])))
                                  ])),
                          Container(
                              margin: getMargin(top: 4, right: 7),
                              decoration: AppDecoration.outlineBlack9003f2,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgRectangle135208x378,
                                        height: getVerticalSize(208),
                                        width: getHorizontalSize(378),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(20)))
                                  ])),
                          Container(
                              height: getVerticalSize(801),
                              width: double.maxFinite,
                              margin: getMargin(top: 12),
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            padding: getPadding(
                                                left: 6,
                                                top: 22,
                                                right: 6,
                                                bottom: 22),
                                            decoration: AppDecoration
                                                .fillGray20001
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .customBorderTL10),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 5, top: 6),
                                                      child: BlocSelector<
                                                              PortalsBloc,
                                                              PortalsState,
                                                              PortalsModel?>(
                                                          selector: (state) =>
                                                              state
                                                                  .portalsModelObj,
                                                          builder: (context,
                                                              portalsModelObj) {
                                                            return GridView
                                                                .builder(
                                                                    shrinkWrap:
                                                                        true,
                                                                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                                        mainAxisExtent: getVerticalSize(
                                                                            217),
                                                                        crossAxisCount:
                                                                            2,
                                                                        mainAxisSpacing:
                                                                            getHorizontalSize(
                                                                                13),
                                                                        crossAxisSpacing:
                                                                            getHorizontalSize(
                                                                                13)),
                                                                    physics:
                                                                        NeverScrollableScrollPhysics(),
                                                                    itemCount: portalsModelObj
                                                                            ?.portalsItemList
                                                                            .length ??
                                                                        0,
                                                                    itemBuilder:
                                                                        (context,
                                                                            index) {
                                                                      PortalsItemModel
                                                                          model =
                                                                          portalsModelObj?.portalsItemList[index] ??
                                                                              PortalsItemModel();
                                                                      return PortalsItemWidget(
                                                                          model);
                                                                    });
                                                          }))
                                                ]))),
                                    CustomButton(
                                        height: getVerticalSize(54),
                                        width: double.maxFinite,
                                        text: "lbl_college_portals".tr,
                                        variant: ButtonVariant.FillBlack900,
                                        shape: ButtonShape.Square,
                                        fontStyle: ButtonFontStyle
                                            .ArchitectsDaughterRegular24,
                                        alignment: Alignment.topCenter)
                                  ])),
                          Container(
                              height: getVerticalSize(26),
                              width: double.maxFinite,
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        height: getVerticalSize(24),
                                        width: double.maxFinite,
                                        decoration: BoxDecoration(
                                            color:
                                                ColorConstant.blueGray10003))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        width: double.maxFinite,
                                        padding: getPadding(
                                            left: 10,
                                            top: 3,
                                            right: 10,
                                            bottom: 3),
                                        decoration: AppDecoration.fillWhiteA700,
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 5),
                                                  child: Text(
                                                      "lbl_follow_us".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMSUIGothic13Gray600)),
                                              Spacer(),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgInstagram,
                                                  height: getVerticalSize(18),
                                                  width: getHorizontalSize(16),
                                                  margin: getMargin(top: 1)),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgFacebook,
                                                  height: getVerticalSize(18),
                                                  width: getHorizontalSize(15),
                                                  margin: getMargin(
                                                      left: 5, top: 1)),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgLinkedin,
                                                  height: getVerticalSize(18),
                                                  width: getHorizontalSize(16),
                                                  margin: getMargin(
                                                      left: 5,
                                                      top: 1,
                                                      right: 23))
                                            ])))
                              ])),
                          Container(
                              width: double.maxFinite,
                              child: Container(
                                  padding: getPadding(
                                      left: 2, top: 4, right: 2, bottom: 4),
                                  decoration: AppDecoration.fillBlack900,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgUnsplashmbqifklvowm89x387,
                                            height: getVerticalSize(89),
                                            width: getHorizontalSize(383))
                                      ])))
                        ])))));
  }

  onTapFolder2(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.frame3607Screen,
    );
  }

  onTapHugeicon5(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.studentProfileScreen,
    );
  }
}
