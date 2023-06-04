import 'package:csd_flutter_application/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.width,
      this.height,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? width;

  double? height;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        visualDensity: VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
        iconSize: getSize(height ?? 0),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      gradient: _setGradient(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll10:
        return getPadding(
          all: 10,
        );
      default:
        return getPadding(
          all: 5,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.OutlineBlack900:
        return ColorConstant.whiteA700;
      case IconButtonVariant.OutlineBlack900_1:
        return ColorConstant.whiteA700;
      case IconButtonVariant.GradientBluegray200Bluegray20000:
        return null;
      default:
        return ColorConstant.black900;
    }
  }

  _setBorder() {
    switch (variant) {
      case IconButtonVariant.OutlineBlack900:
        return Border.all(
          color: ColorConstant.black900,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case IconButtonVariant.OutlineBlack900_1:
        return Border.all(
          color: ColorConstant.black900,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case IconButtonVariant.FillBlack900:
      case IconButtonVariant.GradientBluegray200Bluegray20000:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            22.00,
          ),
        );
    }
  }

  _setGradient() {
    switch (variant) {
      case IconButtonVariant.GradientBluegray200Bluegray20000:
        return LinearGradient(
          begin: Alignment(
            0.5,
            0.5,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            ColorConstant.blueGray200,
            ColorConstant.blueGray20000,
          ],
        );
      case IconButtonVariant.FillBlack900:
      case IconButtonVariant.OutlineBlack900:
      case IconButtonVariant.OutlineBlack900_1:
        return null;
      default:
        return null;
    }
  }
}

enum IconButtonShape {
  CircleBorder22,
}

enum IconButtonPadding {
  PaddingAll5,
  PaddingAll10,
}

enum IconButtonVariant {
  FillBlack900,
  OutlineBlack900,
  OutlineBlack900_1,
  GradientBluegray200Bluegray20000,
}
