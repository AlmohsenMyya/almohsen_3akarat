import '../controller/add_new_property_time_to_sell_controller.dart';
import '../models/addnewpropertytimetosell_item_model.dart';
import 'package:almohsen_3akarat/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddnewpropertytimetosellItemWidget extends StatelessWidget {
  AddnewpropertytimetosellItemWidget(
    this.addnewpropertytimetosellItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AddnewpropertytimetosellItemModel addnewpropertytimetosellItemModelObj;

  var controller = Get.find<AddNewPropertyTimeToSellController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineGray300.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Obx(
            () => Text(
              addnewpropertytimetosellItemModelObj.duration!.value,
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }
}
