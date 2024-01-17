import '../controller/add_new_property_details_controller.dart';
import '../models/addnewpropertydetails_item_model.dart';
import 'package:almohsen_3akarat/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddnewpropertydetailsItemWidget extends StatelessWidget {
  AddnewpropertydetailsItemWidget(
    this.addnewpropertydetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AddnewpropertydetailsItemModel addnewpropertydetailsItemModelObj;

  var controller = Get.find<AddNewPropertyDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 101.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text(
              addnewpropertydetailsItemModelObj.estimatePrice!.value,
              style: theme.textTheme.labelMedium,
            ),
          ),
          SizedBox(height: 4.v),
          Obx(
            () => Text(
              addnewpropertydetailsItemModelObj.price!.value,
              style: CustomTextStyles.titleSmallBold,
            ),
          ),
          SizedBox(height: 3.v),
          Container(
            width: 36.h,
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 4.v,
            ),
            decoration: AppDecoration.fillRed.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: Obx(
              () => Text(
                addnewpropertydetailsItemModelObj.widget!.value,
                style: CustomTextStyles.labelMediumSecondaryContainer,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
