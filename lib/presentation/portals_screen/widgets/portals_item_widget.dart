import '../models/portals_item_model.dart';
import 'package:csd_flutter_application/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PortalsItemWidget extends StatelessWidget {
  PortalsItemWidget(this.portalsItemModelObj);

  PortalsItemModel portalsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 32,
        top: 13,
        right: 32,
        bottom: 13,
      ),
      decoration: AppDecoration.outlineBlack9001.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder22,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse166,
            height: getSize(
              110,
            ),
            width: getSize(
              110,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                55,
              ),
            ),
            margin: getMargin(
              top: 13,
            ),
          ),
          Container(
            height: getVerticalSize(
              60,
            ),
            width: getHorizontalSize(
              104,
            ),
            margin: getMargin(
              top: 5,
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    portalsItemModelObj.priceTxt,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtArchivoBlackRegular32,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "lbl_portal".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtArchivoBlackRegular32WhiteA700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
