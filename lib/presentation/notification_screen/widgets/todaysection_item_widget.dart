import '../controller/notification_controller.dart';
import '../models/todaysection_item_model.dart';
import 'package:almohsen_3akarat/core/app_export.dart';
import 'package:almohsen_3akarat/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TodaysectionItemWidget extends StatelessWidget {
  TodaysectionItemWidget(
    this.todaysectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TodaysectionItemModel todaysectionItemModelObj;

  var controller = Get.find<NotificationController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 18.v),
          child: CustomIconButton(
            height: 44.adaptSize,
            width: 44.adaptSize,
            padding: EdgeInsets.all(10.h),
            decoration: IconButtonStyleHelper.fillGray,
            child: CustomImageView(
              imagePath: ImageConstant.imgHomePrimary,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "msg_there_are_good_deals".tr,
              style: CustomTextStyles.titleSmallBold,
            ),
            SizedBox(height: 4.v),
            SizedBox(
              width: 210.h,
              child: Text(
                "msg_lots_of_great_deals".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodySmall!.copyWith(
                  height: 1.50,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 3.v,
            bottom: 16.v,
          ),
          child: Column(
            children: [
              Text(
                "lbl_1m_ago".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 17.v),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 8.adaptSize,
                  width: 8.adaptSize,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(
                      4.h,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
