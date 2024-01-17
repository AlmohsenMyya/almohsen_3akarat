import '../models/optionschipview_item_model.dart';
import 'package:almohsen_3akarat/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OptionschipviewItemWidget extends StatelessWidget {
  OptionschipviewItemWidget(
    this.optionschipviewItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OptionschipviewItemModel optionschipviewItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 8.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          optionschipviewItemModelObj.freeWiFi!.value,
          style: TextStyle(
            color: theme.colorScheme.primaryContainer,
            fontSize: 14.fSize,
            fontFamily: 'Manrope',
            fontWeight: FontWeight.w500,
          ),
        ),
        selected: (optionschipviewItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.gray50,
        selectedColor: appTheme.gray50,
        shape: (optionschipviewItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.gray50.withOpacity(0.6),
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  18.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.blueGray500,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  18.h,
                ),
              ),
        onSelected: (value) {
          optionschipviewItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
