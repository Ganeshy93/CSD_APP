import 'bloc/events_bloc.dart';
import 'models/events_model.dart';
import 'package:csd_flutter_application/core/app_export.dart';
import 'package:csd_flutter_application/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:csd_flutter_application/widgets/app_bar/appbar_image.dart';
import 'package:csd_flutter_application/widgets/app_bar/appbar_title.dart';
import 'package:csd_flutter_application/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class EventsScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<EventsBloc>(
        create: (context) =>
            EventsBloc(EventsState(eventsModelObj: EventsModel()))
              ..add(EventsInitialEvent()),
        child: EventsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventsBloc, EventsState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              appBar: CustomAppBar(
                  height: getVerticalSize(59),
                  leadingWidth: 42,
                  leading: AppbarImage(
                      height: getVerticalSize(16),
                      width: getHorizontalSize(17),
                      svgPath: ImageConstant.imgFolder,
                      margin: getMargin(left: 25, top: 16, bottom: 27),
                      onTap: () {
                        onTapFolder1(context);
                      }),
                  centerTitle: true,
                  title: AppbarTitle(text: "lbl_csd".tr),
                  actions: [
                    AppbarIconbutton2(
                        imagePath: ImageConstant.imgHugeicon44x44,
                        margin:
                            getMargin(left: 20, top: 4, right: 20, bottom: 11),
                        onTap: () {
                          onTapHugeicon4(context);
                        })
                  ],
                  styleType: Style.bgShadowBlack9003f),
              body: SizedBox(
                  width: size.width,
                  child: SingleChildScrollView(
                      padding: getPadding(top: 28),
                      child: Padding(
                          padding: getPadding(bottom: 5),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    height: getVerticalSize(100),
                                    width: getHorizontalSize(386),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgUnsplashmbqifklvowm100x386,
                                              height: getVerticalSize(100),
                                              width: getHorizontalSize(386),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(10)),
                                              alignment: Alignment.center),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgUnsplashmbqifklvowm100x386,
                                              height: getVerticalSize(100),
                                              width: getHorizontalSize(386),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(10)),
                                              alignment: Alignment.center)
                                        ])),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 11, top: 12, right: 48),
                                        child: Row(children: [
                                          Container(
                                              width: getHorizontalSize(78),
                                              margin: getMargin(bottom: 2),
                                              child: Text("lbl_explore2".tr,
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMyanmarText24)),
                                          Expanded(
                                              child: Container(
                                                  margin: getMargin(
                                                      left: 13, top: 3),
                                                  padding: getPadding(all: 7),
                                                  decoration: AppDecoration
                                                      .outlineBlack900
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .circleBorder22),
                                                  child: Row(children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgSearch,
                                                        height: getSize(29),
                                                        width: getSize(29),
                                                        margin:
                                                            getMargin(top: 1)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 12,
                                                            top: 7,
                                                            bottom: 4),
                                                        child: Text(
                                                            "lbl_search".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtMulishRomanMedium14))
                                                  ])))
                                        ]))),
                                Container(
                                    width: double.maxFinite,
                                    child: Container(
                                        margin: getMargin(top: 17),
                                        padding: getPadding(left: 8, right: 8),
                                        decoration:
                                            AppDecoration.outlineBlack9003f2,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRectangle135,
                                                  height: getVerticalSize(208),
                                                  width: getHorizontalSize(378),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(20)))
                                            ]))),
                                Container(
                                    height: getVerticalSize(682),
                                    width: getHorizontalSize(394),
                                    margin: getMargin(top: 16),
                                    child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Container(
                                                  height: getVerticalSize(41),
                                                  width: getHorizontalSize(394),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .black900,
                                                      borderRadius: BorderRadius.only(
                                                          topLeft: Radius.circular(
                                                              getHorizontalSize(
                                                                  10)),
                                                          topRight: Radius.circular(
                                                              getHorizontalSize(
                                                                  10)))))),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                  padding: getPadding(
                                                      top: 27, bottom: 27),
                                                  decoration:
                                                      AppDecoration.fillGray200,
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 14,
                                                                right: 3),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Text(
                                                                      "lbl_workshops"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtBeVietnamProMedium24),
                                                                  Spacer(),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              11,
                                                                          bottom:
                                                                              6),
                                                                      child: Text(
                                                                          "lbl_see_all"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtBeVietnamProRegular10)),
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgChevronright,
                                                                      height:
                                                                          getSize(
                                                                              15),
                                                                      width:
                                                                          getSize(
                                                                              15),
                                                                      margin: getMargin(
                                                                          top:
                                                                              10,
                                                                          bottom:
                                                                              5))
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 11,
                                                                top: 7),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgRectangle135227x227,
                                                                      height:
                                                                          getSize(
                                                                              227),
                                                                      width: getSize(
                                                                          227),
                                                                      radius: BorderRadius
                                                                          .circular(
                                                                              getHorizontalSize(20))),
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgRectangle139,
                                                                      height:
                                                                          getVerticalSize(
                                                                              227),
                                                                      width: getHorizontalSize(
                                                                          135),
                                                                      radius: BorderRadius
                                                                          .circular(
                                                                              getHorizontalSize(20)))
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 11,
                                                                top: 42,
                                                                right: 8,
                                                                bottom: 246),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Text(
                                                                      "lbl_hackathons"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtBeVietnamProMedium24),
                                                                  Spacer(),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              15,
                                                                          bottom:
                                                                              2),
                                                                      child: Text(
                                                                          "lbl_see_all"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtBeVietnamProRegular10)),
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgChevronright,
                                                                      height:
                                                                          getSize(
                                                                              15),
                                                                      width:
                                                                          getSize(
                                                                              15),
                                                                      margin: getMargin(
                                                                          top:
                                                                              14,
                                                                          bottom:
                                                                              1))
                                                                ]))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 11,
                                                      top: 418,
                                                      bottom: 37),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgRectangle1351,
                                                            height:
                                                                getSize(227),
                                                            width: getSize(227),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        20))),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgRectangle139227x135,
                                                            height:
                                                                getVerticalSize(
                                                                    227),
                                                            width:
                                                                getHorizontalSize(
                                                                    135),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        20)))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Padding(
                                                  padding: getPadding(
                                                      top: 1, right: 137),
                                                  child: Text("lbl_events".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtArchitectsDaughterRegular32)))
                                        ])),
                                Container(
                                    width: getHorizontalSize(394),
                                    padding: getPadding(
                                        left: 30,
                                        top: 5,
                                        right: 104,
                                        bottom: 5),
                                    decoration: AppDecoration.txtFillBlack900,
                                    child: Text("lbl_college_portals".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtArchitectsDaughterRegular24)),
                                Padding(
                                    padding: getPadding(
                                        left: 11, top: 23, right: 10),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: getVerticalSize(205),
                                              width: getHorizontalSize(180),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: GestureDetector(
                                                            onTap: () {
                                                              onTapColumnexam(
                                                                  context);
                                                            },
                                                            child: Container(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            13,
                                                                        top: 21,
                                                                        right:
                                                                            13,
                                                                        bottom:
                                                                            21),
                                                                decoration: AppDecoration
                                                                    .outlineBlack9001
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .circleBorder22),
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
                                                                      Text(
                                                                          "lbl_exam"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtArchivoBlackRegular32),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              bottom:
                                                                                  76),
                                                                          child: Text(
                                                                              "lbl_portal".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtArchivoBlackRegular32WhiteA700))
                                                                    ])))),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgYoungmanwithlaptop,
                                                        height: getVerticalSize(
                                                            134),
                                                        width:
                                                            getHorizontalSize(
                                                                152),
                                                        alignment: Alignment
                                                            .bottomRight,
                                                        margin:
                                                            getMargin(right: 3))
                                                  ])),
                                          Container(
                                              height: getVerticalSize(196),
                                              width: getHorizontalSize(180),
                                              margin: getMargin(bottom: 9),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: GestureDetector(
                                                            onTap: () {
                                                              onTapColumnattendanc(
                                                                  context);
                                                            },
                                                            child: Container(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            12,
                                                                        top: 18,
                                                                        right:
                                                                            12,
                                                                        bottom:
                                                                            18),
                                                                decoration: AppDecoration
                                                                    .outlineBlack9002
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .circleBorder22),
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
                                                                      Text(
                                                                          "lbl_attendance"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtArchivoBlackRegular24),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  2,
                                                                              bottom:
                                                                                  83),
                                                                          child: Text(
                                                                              "lbl_portal".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtArchivoBlackRegular32Gray100))
                                                                    ])))),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgWomantalkingwith,
                                                        height: getVerticalSize(
                                                            121),
                                                        width:
                                                            getHorizontalSize(
                                                                165),
                                                        alignment: Alignment
                                                            .bottomRight)
                                                  ]))
                                        ])),
                                Padding(
                                    padding: getPadding(
                                        left: 11, top: 20, right: 10),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: getVerticalSize(192),
                                              width: getHorizontalSize(180),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: GestureDetector(
                                                            onTap: () {
                                                              onTapUnsplashmbqifkl(
                                                                  context);
                                                            },
                                                            child: Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        186),
                                                                width:
                                                                    getHorizontalSize(
                                                                        180),
                                                                decoration:
                                                                    BoxDecoration(
                                                                        borderRadius: BorderRadius.circular(getHorizontalSize(
                                                                            20)),
                                                                        border: Border.all(
                                                                            color: ColorConstant
                                                                                .black900,
                                                                            width: getHorizontalSize(
                                                                                1)),
                                                                        gradient: LinearGradient(
                                                                            begin: Alignment(-0.08, 0.96),
                                                                            end: Alignment(1.14, 0),
                                                                            colors: [
                                                                              ColorConstant.tealA40082,
                                                                              ColorConstant.yellowA200,
                                                                              ColorConstant.amberA40084
                                                                            ]))))),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgYoungpeoplediscussing,
                                                        height: getVerticalSize(
                                                            116),
                                                        width:
                                                            getHorizontalSize(
                                                                165),
                                                        alignment: Alignment
                                                            .bottomRight),
                                                    Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 6,
                                                                top: 25,
                                                                right: 6),
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
                                                                  Text(
                                                                      "lbl_fee_payment"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtArchivoBlackRegular24),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              2),
                                                                      child: Text(
                                                                          "lbl_portal"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtArchivoBlackRegular32Gray100))
                                                                ])))
                                                  ])),
                                          GestureDetector(
                                              onTap: () {
                                                onTapStackgraduategi(context);
                                              },
                                              child: Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: getMargin(bottom: 6),
                                                  shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                          color: ColorConstant
                                                              .black900,
                                                          width:
                                                              getHorizontalSize(
                                                                  1)),
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder22),
                                                  child: Container(
                                                      height:
                                                          getVerticalSize(186),
                                                      width: getHorizontalSize(
                                                          180),
                                                      padding: getPadding(
                                                          left: 12, right: 12),
                                                      decoration: AppDecoration
                                                          .outlineBlack9003
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .circleBorder22),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgGraduategirlwith,
                                                                height:
                                                                    getVerticalSize(
                                                                        121),
                                                                width:
                                                                    getHorizontalSize(
                                                                        140),
                                                                alignment: Alignment
                                                                    .bottomCenter),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        top: 25,
                                                                        right:
                                                                            2),
                                                                    child: Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize
                                                                                .min,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .start,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                              "lbl_scholorship".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtArchivoBlackRegular24),
                                                                          Text(
                                                                              "lbl_portal".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtArchivoBlackRegular32Gray100)
                                                                        ])))
                                                          ]))))
                                        ])),
                                Container(
                                    margin: getMargin(top: 16),
                                    padding: getPadding(
                                        left: 11, top: 3, right: 11, bottom: 3),
                                    decoration: AppDecoration.fillGray400,
                                    child: Row(children: [
                                      Padding(
                                          padding:
                                              getPadding(top: 1, bottom: 3),
                                          child: Text("lbl_follow_us".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtMSUIGothic13)),
                                      Spacer(),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgInstagram,
                                          height: getSize(17),
                                          width: getSize(17),
                                          margin: getMargin(top: 1)),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgFacebook,
                                          height: getVerticalSize(17),
                                          width: getHorizontalSize(16),
                                          margin: getMargin(left: 6, top: 1)),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgLinkedin,
                                          height: getSize(17),
                                          width: getSize(17),
                                          margin: getMargin(
                                              left: 6, top: 1, right: 24))
                                    ]))
                              ])))),
              bottomNavigationBar: Container(
                  margin: getMargin(left: 3, right: 3, bottom: 4),
                  decoration: AppDecoration.fillBlack900,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath:
                                ImageConstant.imgUnsplashmbqifklvowm89x387,
                            height: getVerticalSize(89),
                            width: getHorizontalSize(387))
                      ]))));
    });
  }

  onTapColumnexam(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.underProgresTwoScreen,
    );
  }

  onTapColumnattendanc(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.underProgresTwoScreen,
    );
  }

  onTapUnsplashmbqifkl(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.underProgresTwoScreen,
    );
  }

  onTapStackgraduategi(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.underProgresTwoScreen,
    );
  }

  onTapFolder1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.frame3607Screen,
    );
  }

  onTapHugeicon4(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.studentProfileScreen,
    );
  }
}
