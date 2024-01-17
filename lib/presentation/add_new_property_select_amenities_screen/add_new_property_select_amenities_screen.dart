import '../add_new_property_select_amenities_screen/widgets/options_item_widget.dart';import 'controller/add_new_property_select_amenities_controller.dart';import 'models/options_item_model.dart';import 'package:almohsen_3akarat/core/app_export.dart';import 'package:almohsen_3akarat/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:almohsen_3akarat/widgets/app_bar/appbar_subtitle_two.dart';import 'package:almohsen_3akarat/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_3akarat/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';class AddNewPropertySelectAmenitiesScreen extends GetWidget<AddNewPropertySelectAmenitiesController> {const AddNewPropertySelectAmenitiesScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.all(24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildAddressAndProgress(), SizedBox(height: 16.v), _buildProgressBar(), SizedBox(height: 24.v), Text("msg_select_amenities".tr, style: CustomTextStyles.titleMediumBold_1), SizedBox(height: 15.v), _buildOptions(), SizedBox(height: 5.v)])), bottomNavigationBar: _buildBtn())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 64.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeftPrimarycontainer, margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 8.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitleTwo(text: "msg_add_new_property".tr), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildAddressAndProgress() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.symmetric(vertical: 6.v), child: Text("msg_select_amenities".tr, style: theme.textTheme.titleSmall)), CustomElevatedButton(height: 33.v, width: 79.h, text: "lbl_08_08".tr, buttonStyle: CustomButtonStyles.fillPrimaryTL16, buttonTextStyle: CustomTextStyles.titleSmallWhiteA700)]); } 
/// Section Widget
Widget _buildProgressBar() { return SizedBox(height: 6.v, width: 327.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.center, child: SizedBox(width: 327.h, child: Divider(color: appTheme.gray300))), Align(alignment: Alignment.center, child: SizedBox(width: 327.h, child: Divider(color: theme.colorScheme.primary)))])); } 
/// Section Widget
Widget _buildOptions() { return Obx(() => Wrap(runSpacing: 8.v, spacing: 8.h, children: List<Widget>.generate(controller.addNewPropertySelectAmenitiesModelObj.value.optionsItemList.value.length, (index) {OptionsItemModel model = controller.addNewPropertySelectAmenitiesModelObj.value.optionsItemList.value[index]; return OptionsItemWidget(model);}))); } 
/// Section Widget
Widget _buildBtn() { return Container(margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), decoration: AppDecoration.outlineBlueGrayF, child: CustomElevatedButton(text: "lbl_next".tr, onPressed: () {onTapNext();})); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
/// Navigates to the addNewPropertyDetailsScreen when the action is triggered.
onTapNext() { Get.toNamed(AppRoutes.addNewPropertyDetailsScreen, ); } 
 }
