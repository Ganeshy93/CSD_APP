import '../models/srkr_profile_item_model.dart';
import 'package:csd_flutter_application/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SrkrProfileItemWidget extends StatelessWidget {
  SrkrProfileItemWidget(this.srkrProfileItemModelObj);

  SrkrProfileItemModel srkrProfileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.img78b86dd636504,
      height: getVerticalSize(
        118,
      ),
      width: getHorizontalSize(
        116,
      ),
      radius: BorderRadius.circular(
        getHorizontalSize(
          10,
        ),
      ),
    );
  }
}
