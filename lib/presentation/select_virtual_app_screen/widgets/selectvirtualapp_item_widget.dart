import '../controller/select_virtual_app_controller.dart';
import '../models/selectvirtualapp_item_model.dart';
import 'package:almohsen_3akarat/core/app_export.dart';
import 'package:almohsen_3akarat/widgets/custom_icon_button.dart';
import 'package:almohsen_3akarat/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SelectvirtualappItemWidget extends StatelessWidget {
  SelectvirtualappItemWidget(
    this.selectvirtualappItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SelectvirtualappItemModel selectvirtualappItemModelObj;

  var controller = Get.find<SelectVirtualAppController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineGray300.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => CustomIconButton(
                  height: 48.adaptSize,
                  width: 48.adaptSize,
                  padding: EdgeInsets.all(11.h),
                  decoration: IconButtonStyleHelper.fillGrayTL24,
                  child: CustomImageView(
                    imagePath: selectvirtualappItemModelObj.whatsapp!.value,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 4.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        selectvirtualappItemModelObj.whatsapp1!.value,
                        style: CustomTextStyles.titleMedium16,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Obx(
                      () => Text(
                        selectvirtualappItemModelObj.recommend!.value,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12.v),
                child: Obx(
                  () => CustomIconButton(
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    padding: EdgeInsets.all(5.h),
                    decoration: IconButtonStyleHelper.fillPrimary,
                    child: CustomImageView(
                      imagePath: selectvirtualappItemModelObj.check!.value,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          CustomTextFormField(
            controller: selectvirtualappItemModelObj.emailController,
            hintText: "lbl_email".tr,
            textInputAction: TextInputAction.done,
          ),
        ],
      ),
    );
  }
}
