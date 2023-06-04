import 'package:csd_flutter_application/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.padding,
      this.shape,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonPadding? padding;

  ButtonShape? shape;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonChildWidget(),
      ),
    );
  }

  _buildButtonChildWidget() {
    if (checkGradient()) {
      return Container(
        width: width ?? double.maxFinite,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: _buildButtonWithOrWithoutIcon(),
      );
    } else {
      return _buildButtonWithOrWithoutIcon();
    }
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildDecoration() {
    return BoxDecoration(
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      gradient: _setGradient(),
      boxShadow: _setBoxShadow(),
    );
  }

  _buildTextButtonStyle() {
    if (checkGradient()) {
      return TextButton.styleFrom(
        padding: EdgeInsets.zero,
      );
    } else {
      return TextButton.styleFrom(
        fixedSize: Size(
          width ?? double.maxFinite,
          height ?? getVerticalSize(40),
        ),
        padding: _setPadding(),
        backgroundColor: _setColor(),
        side: _setTextButtonBorder(),
        shadowColor: _setTextButtonShadowColor(),
        shape: RoundedRectangleBorder(
          borderRadius: _setBorderRadius(),
        ),
      );
    }
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingT13:
        return getPadding(
          left: 12,
          top: 13,
          right: 12,
          bottom: 13,
        );
      default:
        return getPadding(
          all: 9,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineBlue4007f:
        return ColorConstant.blue400;
      case ButtonVariant.OutlineBlack9003f:
        return ColorConstant.whiteA700;
      case ButtonVariant.FillCyan100:
        return ColorConstant.cyan100;
      case ButtonVariant.FillBlack900:
        return ColorConstant.black900;
      case ButtonVariant.OutlineBlack900:
      case ButtonVariant.GradientLightgreen500GreenA200:
      case ButtonVariant.GradientLightgreen500YellowA400:
        return null;
      default:
        return null;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.GradientLightgreen500GreenA200:
      case ButtonVariant.GradientLightgreen500YellowA400:
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.OutlineBlue4007f:
      case ButtonVariant.OutlineBlack9003f:
      case ButtonVariant.FillCyan100:
      case ButtonVariant.FillBlack900:
        return null;
      default:
        return BorderSide(
          color: ColorConstant.black900,
          width: getHorizontalSize(
            1.00,
          ),
        );
    }
  }

  _setTextButtonShadowColor() {
    switch (variant) {
      case ButtonVariant.OutlineBlue4007f:
        return ColorConstant.blue4007f;
      case ButtonVariant.OutlineBlack9003f:
        return ColorConstant.black9003f;
      case ButtonVariant.OutlineBlack900:
      case ButtonVariant.GradientLightgreen500GreenA200:
      case ButtonVariant.GradientLightgreen500YellowA400:
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.FillCyan100:
      case ButtonVariant.FillBlack900:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder15:
        return BorderRadius.circular(
          getHorizontalSize(
            15.00,
          ),
        );
      case ButtonShape.CustomBorderTL30:
        return BorderRadius.only(
          topLeft: Radius.circular(
            getHorizontalSize(
              30.00,
            ),
          ),
          topRight: Radius.circular(
            getHorizontalSize(
              30.00,
            ),
          ),
          bottomLeft: Radius.circular(
            getHorizontalSize(
              30.00,
            ),
          ),
          bottomRight: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.PoppinsMedium1792:
        return TextStyle(
          color: ColorConstant.gray50,
          fontSize: getFontSize(
            17.92,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.PoppinsMedium1792WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            17.92,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.MSUIGothic18:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'MS UI Gothic',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.PoppinsMedium1312:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            13.12,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.PoppinsMedium1312Black900:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            13.12,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.PoppinsRegular1514:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            15.14,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.ArchitectsDaughterRegular24:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            24,
          ),
          fontFamily: 'Architects Daughter',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            24,
          ),
          fontFamily: 'MS UI Gothic',
          fontWeight: FontWeight.w400,
        );
    }
  }

  _setBorder() {
    switch (variant) {
      case ButtonVariant.GradientLightgreen500GreenA200:
      case ButtonVariant.GradientLightgreen500YellowA400:
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.OutlineBlue4007f:
      case ButtonVariant.OutlineBlack9003f:
      case ButtonVariant.FillCyan100:
      case ButtonVariant.FillBlack900:
        return null;
      default:
        return Border.all(
          color: ColorConstant.black900,
          width: getHorizontalSize(
            1.00,
          ),
        );
    }
  }

  checkGradient() {
    switch (variant) {
      case ButtonVariant.GradientLightgreen500GreenA200:
      case ButtonVariant.GradientLightgreen500YellowA400:
        return true;
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.OutlineBlue4007f:
      case ButtonVariant.OutlineBlack9003f:
      case ButtonVariant.FillCyan100:
      case ButtonVariant.FillBlack900:
        return false;
      default:
        return true;
    }
  }

  _setGradient() {
    switch (variant) {
      case ButtonVariant.GradientLightgreen500GreenA200:
        return LinearGradient(
          begin: Alignment(
            0,
            0.31,
          ),
          end: Alignment(
            1.02,
            0.47,
          ),
          colors: [
            ColorConstant.lightGreen500,
            ColorConstant.lime300,
            ColorConstant.greenA200,
          ],
        );
      case ButtonVariant.GradientLightgreen500YellowA400:
        return LinearGradient(
          begin: Alignment(
            0,
            0.31,
          ),
          end: Alignment(
            1.02,
            0.47,
          ),
          colors: [
            ColorConstant.lightGreen500,
            ColorConstant.tealA400,
            ColorConstant.yellowA400,
          ],
        );
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.OutlineBlue4007f:
      case ButtonVariant.OutlineBlack9003f:
      case ButtonVariant.FillCyan100:
      case ButtonVariant.FillBlack900:
        return null;
      default:
        return LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            ColorConstant.lightGreen100,
            ColorConstant.whiteA700,
          ],
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case ButtonVariant.OutlineBlue4007f:
        return [
          BoxShadow(
            color: ColorConstant.blue4007f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              10.09,
            ),
          ),
        ];
      case ButtonVariant.OutlineBlack9003f:
        return [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              10.09,
            ),
          ),
        ];
      case ButtonVariant.OutlineBlack900:
      case ButtonVariant.GradientLightgreen500GreenA200:
      case ButtonVariant.GradientLightgreen500YellowA400:
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.FillCyan100:
      case ButtonVariant.FillBlack900:
        return null;
      default:
        return null;
    }
  }
}

enum ButtonPadding {
  PaddingAll9,
  PaddingT13,
}

enum ButtonShape {
  Square,
  RoundedBorder15,
  CircleBorder20,
  CustomBorderTL30,
}

enum ButtonVariant {
  OutlineBlack900,
  GradientLightgreen500GreenA200,
  GradientLightgreen500YellowA400,
  FillWhiteA700,
  OutlineBlue4007f,
  OutlineBlack9003f,
  FillCyan100,
  FillBlack900,
}

enum ButtonFontStyle {
  MSUIGothic24,
  PoppinsMedium1792,
  PoppinsMedium1792WhiteA700,
  MSUIGothic18,
  PoppinsMedium1312,
  PoppinsMedium1312Black900,
  PoppinsRegular1514,
  ArchitectsDaughterRegular24,
}
