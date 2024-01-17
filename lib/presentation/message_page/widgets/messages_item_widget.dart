import '../controller/message_controller.dart';
import '../models/messages_item_model.dart';
import 'package:almohsen_3akarat/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MessagesItemWidget extends StatelessWidget {
  MessagesItemWidget(
    this.messagesItemModelObj, {
    Key? key,
    this.onTapMsg,
  }) : super(
          key: key,
        );

  MessagesItemModel messagesItemModelObj;

  var controller = Get.find<MessageController>();

  VoidCallback? onTapMsg;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapMsg!.call();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 48.adaptSize,
            width: 48.adaptSize,
            margin: EdgeInsets.only(bottom: 2.v),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: messagesItemModelObj.wadeWarren!.value,
                    height: 48.adaptSize,
                    width: 48.adaptSize,
                    radius: BorderRadius.circular(
                      24.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.onError,
                      borderRadius: BorderRadius.circular(
                        6.h,
                      ),
                      border: Border.all(
                        color: appTheme.gray50,
                        width: 1.h,
                        strokeAlign: strokeAlignOutside,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    messagesItemModelObj.wadeWarren1!.value,
                    style: CustomTextStyles.titleMediumBold,
                  ),
                ),
                SizedBox(height: 9.v),
                Obx(
                  () => Text(
                    messagesItemModelObj.message!.value,
                    style: CustomTextStyles.titleSmallBluegray500Medium,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 30.v),
            child: Obx(
              () => Text(
                messagesItemModelObj.time!.value,
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
