import 'package:almohsen_3akarat/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.whiteA700,
                  borderRadius: BorderRadius.circular(20.h),
                  border: Border.all(
                    color: appTheme.gray300,
                    width: 1.h,
                  ),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get outlineGrayTL18 => BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(18.h),
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray300,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get outlineGrayTL20 => BoxDecoration(
        borderRadius: BorderRadius.circular(20.h),
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get outlineGrayTL5 => BoxDecoration(
        borderRadius: BorderRadius.circular(5.h),
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlue => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(20.h),
        border: Border.all(
          color: appTheme.blue100,
          width: 4.h,
        ),
      );
  static BoxDecoration get fillPrimaryTL5 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(5.h),
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(24.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray40014,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fillGrayTL24 => BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get fillPrimaryTL20 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillGrayTL20 => BoxDecoration(
        color: appTheme.gray300,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get outlineGrayTL12 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(12.h),
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGrayTL121 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(12.h),
        border: Border.all(
          color: appTheme.gray50,
          width: 1.h,
        ),
      );
}
