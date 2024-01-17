import '../controller/confirm_request_bottom_sheet_controller.dart';
import '../models/confirmrequestgrid_item_model.dart';
import 'package:almohsen_3akarat/core/app_export.dart';
import 'package:almohsen_3akarat/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ConfirmrequestgridItemWidget extends StatelessWidget {
  ConfirmrequestgridItemWidget(
    this.confirmrequestgridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ConfirmrequestgridItemModel confirmrequestgridItemModelObj;

  var controller = Get.find<ConfirmRequestBottomSheetController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineGray300.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          Obx(
            () => CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(9.h),
              decoration: IconButtonStyleHelper.fillGrayTL20,
              child: CustomImageView(
                imagePath: confirmrequestgridItemModelObj.home!.value,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    confirmrequestgridItemModelObj.homeClosed!.value,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Obx(
                  () => Text(
                    confirmrequestgridItemModelObj.twentyFive!.value,
                    style: CustomTextStyles.titleSmallExtraBold,
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
