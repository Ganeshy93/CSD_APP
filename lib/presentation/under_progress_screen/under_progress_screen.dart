import 'bloc/under_progress_bloc.dart';
import 'models/under_progress_model.dart';
import 'package:csd_flutter_application/core/app_export.dart';
import 'package:flutter/material.dart';

class UnderProgressScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<UnderProgressBloc>(
        create: (context) => UnderProgressBloc(
            UnderProgressState(underProgressModelObj: UnderProgressModel()))
          ..add(UnderProgressInitialEvent()),
        child: UnderProgressScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UnderProgressBloc, UnderProgressState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(top: 14, bottom: 14),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgBackto,
                            height: getSize(53),
                            width: getSize(53),
                            alignment: Alignment.centerLeft,
                            margin: getMargin(left: 14),
                            onTap: () {
                              onTapImgBackto(context);
                            }),
                        CustomImageView(
                            imagePath: ImageConstant.imgTimemanagement,
                            height: getVerticalSize(326),
                            width: getHorizontalSize(382),
                            margin: getMargin(top: 34)),
                        Padding(
                            padding: getPadding(top: 22),
                            child: Text("msg_this_page_was_under".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtBeVietnamProRegular1312)),
                        Padding(
                            padding: getPadding(top: 4),
                            child: Text("lbl_opening_soon".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtBeVietnamProSemiBold24)),
                        Spacer(),
                        CustomImageView(
                            imagePath: ImageConstant.imgFlutter,
                            height: getSize(53),
                            width: getSize(53)),
                        Padding(
                            padding: getPadding(bottom: 31),
                            child: Text("msg_builded_with_flutter".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.txtBeVietnamProRegular10Black900))
                      ]))));
    });
  }

  onTapImgBackto(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }
}
