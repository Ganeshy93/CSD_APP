import '../models/csd_profile_item_model.dart';
import 'package:csd_flutter_application/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CsdProfileItemWidget extends StatelessWidget {
  CsdProfileItemWidget(this.csdProfileItemModelObj);

  CsdProfileItemModel csdProfileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgA489b7ef8b974,
            height: getVerticalSize(
              116,
            ),
            width: getHorizontalSize(
              118,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                10,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img2bb408668ce34,
            height: getVerticalSize(
              116,
            ),
            width: getHorizontalSize(
              115,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                10,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img09d3d5b697a34,
            height: getSize(
              116,
            ),
            width: getSize(
              116,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
