import '../controller/product_details_controller.dart';
import '../models/imageanddetails_item_model.dart';
import 'package:almohsen_3akarat/core/app_export.dart';
import 'package:almohsen_3akarat/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ImageanddetailsItemWidget extends StatelessWidget {
  ImageanddetailsItemWidget(
    this.imageanddetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ImageanddetailsItemModel imageanddetailsItemModelObj;

  var controller = Get.find<ProductDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 343.adaptSize,
        width: 343.adaptSize,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage343x343,
              height: 343.adaptSize,
              width: 343.adaptSize,
              radius: BorderRadius.circular(
                20.h,
              ),
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 24.h,
                  top: 24.v,
                  right: 24.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomIconButton(
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          padding: EdgeInsets.all(14.h),
                          decoration: IconButtonStyleHelper.outlineBlue,
                          child: CustomImageView(
                            imagePath:
                                ImageConstant.imgArrowLeftPrimarycontainer40x40,
                          ),
                        ),
                        CustomIconButton(
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          padding: EdgeInsets.all(8.h),
                          decoration: IconButtonStyleHelper.outlineBlue,
                          child: CustomImageView(
                            imagePath:
                                ImageConstant.imgTelevisionPrimarycontainer,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 224.v),
                    Text(
                      "msg_701_ocean_avenue".tr,
                      style: CustomTextStyles.titleSmallGray300,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
