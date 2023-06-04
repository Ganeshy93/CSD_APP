import 'bloc/student_profile_bloc.dart';
import 'models/student_profile_model.dart';
import 'package:csd_flutter_application/core/app_export.dart';
import 'package:csd_flutter_application/widgets/app_bar/appbar_image.dart';
import 'package:csd_flutter_application/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class StudentProfileScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<StudentProfileBloc>(
        create: (context) => StudentProfileBloc(
            StudentProfileState(studentProfileModelObj: StudentProfileModel()))
          ..add(StudentProfileInitialEvent()),
        child: StudentProfileScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StudentProfileBloc, StudentProfileState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: getHorizontalSize(394),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            width: double.maxFinite,
                            child: Container(
                                padding: getPadding(top: 30, bottom: 30),
                                decoration: AppDecoration.outlineBlack9008,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomAppBar(
                                          height: getVerticalSize(30),
                                          leadingWidth: 43,
                                          leading: AppbarImage(
                                              height: getSize(21),
                                              width: getSize(21),
                                              svgPath: ImageConstant.imgClose,
                                              margin: getMargin(
                                                  left: 22, top: 6, bottom: 2),
                                              onTap: () {
                                                onTapClose(context);
                                              }),
                                          centerTitle: true,
                                          title: Text("lbl_design2".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMSReferenceSansSerif24)),
                                      Container(
                                          height: getVerticalSize(441),
                                          width: getHorizontalSize(306),
                                          margin:
                                              getMargin(top: 59, bottom: 143),
                                          child: Stack(
                                              alignment: Alignment.topCenter,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: Container(
                                                        padding: getPadding(
                                                            left: 32,
                                                            top: 56,
                                                            right: 32,
                                                            bottom: 56),
                                                        decoration: AppDecoration
                                                            .fillBlack900
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .circleBorder30),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  "lbl_hello_ganesh"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtBalooTammuduRegular20),
                                                              Container(
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              7,
                                                                          right:
                                                                              5),
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              13,
                                                                          top:
                                                                              9,
                                                                          right:
                                                                              13,
                                                                          bottom:
                                                                              9),
                                                                  decoration: AppDecoration
                                                                      .outlineBlack9009
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .roundedBorder10),
                                                                  child: Row(
                                                                      children: [
                                                                        CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgGraduationcap,
                                                                            height: getSize(24),
                                                                            width: getSize(24),
                                                                            margin: getMargin(bottom: 4)),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(left: 37, top: 1),
                                                                            child: Text("lbl_21b91a6262".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBasicRegular20))
                                                                      ])),
                                                              Container(
                                                                  margin:
                                                                      getMargin(
                                                                          left:
                                                                              2,
                                                                          top:
                                                                              29,
                                                                          right:
                                                                              3),
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              9,
                                                                          bottom:
                                                                              9),
                                                                  decoration: AppDecoration
                                                                      .outlineBlack9009
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .roundedBorder10),
                                                                  child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceEvenly,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgUniversity,
                                                                            height: getSize(28),
                                                                            width: getSize(28)),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 2, bottom: 6),
                                                                            child: Text("msg_srkr_enginerring".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBasicRegular15))
                                                                      ])),
                                                              Container(
                                                                  margin: getMargin(
                                                                      top: 24,
                                                                      right: 5,
                                                                      bottom:
                                                                          30),
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              8,
                                                                          bottom:
                                                                              8),
                                                                  decoration: AppDecoration
                                                                      .outlineBlack9009
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .roundedBorder10),
                                                                  child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceEvenly,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgTeaching,
                                                                            height: getSize(29),
                                                                            width: getSize(29),
                                                                            margin: getMargin(bottom: 1)),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(top: 5, bottom: 5),
                                                                            child: Text("msg_computer_science3".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtBasicRegular15))
                                                                      ]))
                                                            ]))),
                                                Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Card(
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        elevation: 0,
                                                        margin:
                                                            EdgeInsets.all(0),
                                                        color: ColorConstant
                                                            .whiteA700,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .circleBorder55),
                                                        child: Container(
                                                            height:
                                                                getSize(108),
                                                            width: getSize(108),
                                                            padding: getPadding(
                                                                all: 6),
                                                            decoration: AppDecoration
                                                                .fillWhiteA700
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .circleBorder55),
                                                            child: Stack(
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgEllipse162,
                                                                      height:
                                                                          getSize(
                                                                              96),
                                                                      width: getSize(
                                                                          96),
                                                                      radius: BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              48)),
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      onTap:
                                                                          () {
                                                                        onTapImgEllipse162(
                                                                            context);
                                                                      })
                                                                ]))))
                                              ]))
                                    ])))
                      ]))));
    });
  }

  onTapClose(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapImgEllipse162(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.csdProfileScreen,
    );
  }
}
