import '../controller/product_details_controller.dart';
import '../models/cards_item_model.dart';
import 'package:almohsen_3akarat/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardsItemWidget extends StatelessWidget {
  CardsItemWidget(
    this.cardsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CardsItemModel cardsItemModelObj;

  var controller = Get.find<ProductDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(11.h),
      decoration: AppDecoration.outlineGray300.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          Obx(
            () => CustomImageView(
              imagePath: cardsItemModelObj.image!.value,
              height: 62.adaptSize,
              width: 62.adaptSize,
              radius: BorderRadius.circular(
                5.h,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                top: 2.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      cardsItemModelObj.theNewSchoolAt!.value,
                      style: CustomTextStyles.labelLargePrimaryContainerBold,
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Obx(
                    () => Text(
                      cardsItemModelObj.publicPrekEight!.value,
                      style: CustomTextStyles.bodySmallPrimaryContainer,
                    ),
                  ),
                  SizedBox(height: 3.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgSignal,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSignal,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(left: 4.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSignal,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(left: 4.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSignal,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(left: 4.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSignalGray300,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(left: 4.h),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: Obx(
                          () => Text(
                            cardsItemModelObj.reviewsCounter!.value,
                            style: CustomTextStyles.bodySmall10,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
