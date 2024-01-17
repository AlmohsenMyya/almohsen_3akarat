import '../controller/add_new_property_meet_with_a_agent_controller.dart';
import '../models/time_item_model.dart';
import 'package:almohsen_3akarat/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TimeItemWidget extends StatelessWidget {
  TimeItemWidget(
    this.timeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TimeItemModel timeItemModelObj;

  var controller = Get.find<AddNewPropertyMeetWithAAgentController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 83.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: 83.h,
          padding: EdgeInsets.symmetric(
            horizontal: 13.h,
            vertical: 10.v,
          ),
          decoration: AppDecoration.outlineGray300.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Obx(
            () => Text(
              timeItemModelObj.time!.value,
              style: theme.textTheme.titleSmall,
            ),
          ),
        ),
      ),
    );
  }
}
