import 'controller/filter_tab_container_controller.dart';
import 'package:almohsen_3akarat/core/app_export.dart';
import 'package:almohsen_3akarat/presentation/filter_page/filter_page.dart';
import 'package:almohsen_3akarat/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class FilterTabContainerScreen extends GetWidget<FilterTabContainerController> {
  const FilterTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 24.v),
                SizedBox(
                  width: 56.h,
                  child: Divider(
                    color: appTheme.blueGray500,
                  ),
                ),
                SizedBox(height: 8.v),
                _buildHeaderRow(),
                SizedBox(height: 24.v),
                _buildTabview(),
                SizedBox(
                  height: 958.v,
                  child: TabBarView(
                    controller: controller.tabviewController,
                    children: [
                      FilterPage(),
                      FilterPage(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeaderRow() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillGray50,
      child: Row(
        children: [
          CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(8.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgIconPrimarycontainer,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 95.h,
              top: 8.v,
              bottom: 6.v,
            ),
            child: Text(
              "lbl_filters".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 48.v,
      width: 327.h,
      decoration: BoxDecoration(
        color: appTheme.gray300,
        borderRadius: BorderRadius.circular(
          10.h,
        ),
      ),
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.primaryContainer,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelColor: appTheme.blueGray500,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w600,
        ),
        indicatorPadding: EdgeInsets.all(
          4.0.h,
        ),
        indicator: BoxDecoration(
          color: appTheme.whiteA700,
          borderRadius: BorderRadius.circular(
            7.h,
          ),
          boxShadow: [
            BoxShadow(
              color: appTheme.blueGray40014,
              spreadRadius: 2.h,
              blurRadius: 2.h,
              offset: Offset(
                0,
                4,
              ),
            ),
          ],
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_for_sale".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_for_rent".tr,
            ),
          ),
        ],
      ),
    );
  }
}
