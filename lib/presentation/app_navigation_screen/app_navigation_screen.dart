import 'controller/app_navigation_controller.dart';
import 'package:almohsen_3akarat/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Splash".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign in ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign up ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home - Container".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home_Alarm".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeAlarmScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notification".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notification_Empty States".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationEmptyStatesScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Message_Chat".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.messageChatScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "My Home_Empty".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.myHomeEmptyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add New Property_Address".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.addNewPropertyAddressScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add New Property_Meet with a Agent".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.addNewPropertyMeetWithAAgentScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add New Property_Time to sell".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.addNewPropertyTimeToSellScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "Add New Property_Reason selling home".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.addNewPropertyReasonSellingHomeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add New Property_Decsription".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.addNewPropertyDecsriptionScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add New Property_Home facts".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.addNewPropertyHomeFactsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add New Property_Contact".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.addNewPropertyContactScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add New Property_Select Amenities".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.addNewPropertySelectAmenitiesScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add New Property_Details".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.addNewPropertyDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home_Listing".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeListingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home_Listing_Satelite".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homeListingSateliteScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home_Listing_Draw".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeListingDrawScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Filter - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.filterTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Product Details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.productDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Pick Date".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.pickDateScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Verify Phone Number".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.verifyPhoneNumberScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Select virtual app".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.selectVirtualAppScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Select App_Alarm".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.selectAppAlarmScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Confirm request ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.confirmRequestScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Settings ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settingsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "FAQs_Get help".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.faqsGetHelpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Past Tours".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.pastToursScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Edit Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Recently Views".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.recentlyViewsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Favorite ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.favoriteScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
