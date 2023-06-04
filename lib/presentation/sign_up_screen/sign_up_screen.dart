import 'bloc/sign_up_bloc.dart';
import 'models/sign_up_model.dart';
import 'package:csd_flutter_application/core/app_export.dart';
import 'package:csd_flutter_application/widgets/custom_button.dart';
import 'package:csd_flutter_application/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpBloc>(
        create: (context) =>
            SignUpBloc(SignUpState(signUpModelObj: SignUpModel()))
              ..add(SignUpInitialEvent()),
        child: SignUpScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgLoginscreenthree),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 30, top: 23, right: 30, bottom: 23),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(left: 10, right: 1),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          onTapStackdoubleleft(context);
                                        },
                                        child: Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin:
                                                getMargin(top: 2, bottom: 3),
                                            color: ColorConstant.whiteA700,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder18),
                                            child: Container(
                                                height: getSize(36),
                                                width: getSize(36),
                                                padding: getPadding(all: 3),
                                                decoration: AppDecoration
                                                    .fillWhiteA700
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .circleBorder18),
                                                child: Stack(children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgDoubleleft,
                                                      height: getSize(29),
                                                      width: getSize(29),
                                                      alignment:
                                                          Alignment.center)
                                                ])))),
                                    CustomButton(
                                        width: getHorizontalSize(93),
                                        text: "lbl_sign_in2".tr,
                                        variant: ButtonVariant
                                            .GradientLightgreen500GreenA200,
                                        shape: ButtonShape.RoundedBorder15,
                                        fontStyle:
                                            ButtonFontStyle.PoppinsMedium1792,
                                        onTap: () {
                                          onTapSignin(context);
                                        })
                                  ])),
                          Spacer(),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 6),
                                  child: Text("lbl_welcome".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsSemiBold4033))),
                          Text("msg_computer_science".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium1433),
                          Container(
                              height: getVerticalSize(87),
                              width: getHorizontalSize(314),
                              margin: getMargin(top: 26),
                              child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 58, bottom: 15),
                                            child: Text("lbl_username".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium1433))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl_username".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium1433),
                                              BlocSelector<
                                                      SignUpBloc,
                                                      SignUpState,
                                                      TextEditingController?>(
                                                  selector: (state) => state
                                                      .grouptwentysixController,
                                                  builder: (context,
                                                      grouptwentysixController) {
                                                    return CustomTextFormField(
                                                        focusNode: FocusNode(),
                                                        autofocus: true,
                                                        controller:
                                                            grouptwentysixController,
                                                        margin:
                                                            getMargin(top: 10),
                                                        textInputAction:
                                                            TextInputAction
                                                                .done,
                                                        prefix: Container(
                                                            margin: getMargin(
                                                                left: 13,
                                                                top: 17,
                                                                right: 13,
                                                                bottom: 17),
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant
                                                                    .gray500),
                                                            child: CustomImageView(
                                                                svgPath: ImageConstant
                                                                    .imgUser)),
                                                        prefixConstraints:
                                                            BoxConstraints(
                                                                maxHeight:
                                                                    getVerticalSize(
                                                                        55)),
                                                        suffix: Container(
                                                            child: CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgCard,
                                                                height:
                                                                    getVerticalSize(55),
                                                                width: getHorizontalSize(314))),
                                                        suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(55)));
                                                  })
                                            ]))
                                  ])),
                          Container(
                              height: getVerticalSize(82),
                              width: getHorizontalSize(315),
                              margin: getMargin(top: 11),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgAlarm,
                                    height: getVerticalSize(16),
                                    width: getHorizontalSize(22),
                                    alignment: Alignment.topRight,
                                    margin: getMargin(top: 11, right: 20)),
                                Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: getVerticalSize(22),
                                              width: getHorizontalSize(70),
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Text(
                                                            "lbl_password".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsMedium1433)),
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Text(
                                                            "lbl_password".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsMedium1433))
                                                  ])),
                                          Container(
                                              height: getVerticalSize(55),
                                              width: getHorizontalSize(314),
                                              margin:
                                                  getMargin(left: 1, top: 5),
                                              child: Stack(
                                                  alignment: Alignment.topLeft,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgCard,
                                                        height:
                                                            getVerticalSize(55),
                                                        width:
                                                            getHorizontalSize(
                                                                314),
                                                        alignment:
                                                            Alignment.center),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgVector,
                                                        height:
                                                            getVerticalSize(18),
                                                        width:
                                                            getHorizontalSize(
                                                                20),
                                                        alignment:
                                                            Alignment.topLeft,
                                                        margin: getMargin(
                                                            left: 14, top: 15))
                                                  ]))
                                        ]))
                              ])),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: getPadding(top: 12, right: 6),
                                  child: Text("msg_forgot_password".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium1133))),
                          CustomButton(
                              text: "lbl_sign_up".tr,
                              margin: getMargin(left: 16, top: 17),
                              variant:
                                  ButtonVariant.GradientLightgreen500YellowA400,
                              shape: ButtonShape.RoundedBorder15,
                              fontStyle:
                                  ButtonFontStyle.PoppinsMedium1792WhiteA700,
                              onTap: () {
                                onTapSignup(context);
                              }),
                          Padding(
                              padding: getPadding(left: 21, top: 17, right: 6),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 8, bottom: 7),
                                        child: SizedBox(
                                            width: getHorizontalSize(98),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness:
                                                    getVerticalSize(1)))),
                                    Padding(
                                        padding: getPadding(left: 7),
                                        child: Text("msg_or_continue_with".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsMedium1125)),
                                    Padding(
                                        padding: getPadding(top: 9, bottom: 6),
                                        child: SizedBox(
                                            width: getHorizontalSize(105),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                indent: getHorizontalSize(7))))
                                  ])),
                          Padding(
                              padding: getPadding(top: 12, bottom: 88),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: EdgeInsets.all(0),
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                color:
                                                    ColorConstant.whiteA7005e,
                                                width: getHorizontalSize(1)),
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                        child: Container(
                                            height: getVerticalSize(43),
                                            width: getHorizontalSize(58),
                                            padding: getPadding(
                                                left: 16,
                                                top: 8,
                                                right: 16,
                                                bottom: 8),
                                            decoration: AppDecoration
                                                .outlineWhiteA7005e
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                            child: Stack(children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgIcons8google2,
                                                  height: getSize(26),
                                                  width: getSize(26),
                                                  alignment: Alignment.center)
                                            ]))),
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: getMargin(left: 16),
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                color:
                                                    ColorConstant.whiteA7005e,
                                                width: getHorizontalSize(1)),
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                        child: Container(
                                            height: getVerticalSize(43),
                                            width: getHorizontalSize(58),
                                            padding: getPadding(
                                                left: 13,
                                                top: 5,
                                                right: 13,
                                                bottom: 5),
                                            decoration: AppDecoration
                                                .outlineWhiteA7005e
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                            child: Stack(children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgImg1,
                                                  height: getSize(32),
                                                  width: getSize(32),
                                                  alignment: Alignment.center)
                                            ]))),
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: getMargin(left: 15),
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                color:
                                                    ColorConstant.whiteA7005e,
                                                width: getHorizontalSize(1)),
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                        child: Container(
                                            height: getVerticalSize(43),
                                            width: getHorizontalSize(58),
                                            padding: getPadding(
                                                left: 16,
                                                top: 8,
                                                right: 16,
                                                bottom: 8),
                                            decoration: AppDecoration
                                                .outlineWhiteA7005e
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                            child: Stack(children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgImg3,
                                                  height: getSize(26),
                                                  width: getSize(26),
                                                  alignment: Alignment.center)
                                            ])))
                                  ]))
                        ])))));
  }

  onTapStackdoubleleft(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreenThreeScreen,
    );
  }

  onTapSignin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreenThreeScreen,
    );
  }

  onTapSignup(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreenThreeScreen,
    );
  }
}
