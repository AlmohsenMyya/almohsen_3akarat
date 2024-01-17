import 'controller/profile_controller.dart';import 'models/profile_model.dart';import 'package:almohsen_3akarat/core/app_export.dart';import 'package:almohsen_3akarat/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:almohsen_3akarat/widgets/app_bar/appbar_subtitle_two.dart';import 'package:almohsen_3akarat/widgets/app_bar/custom_app_bar.dart';import 'package:almohsen_3akarat/widgets/custom_icon_button.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {ProfilePage({Key? key}) : super(key: key);

ProfileController controller = Get.put(ProfileController(ProfileModel().obs));

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.all(24.h), child: Column(children: [SizedBox(height: 70.adaptSize, width: 70.adaptSize, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgRectangle361, height: 70.adaptSize, width: 70.adaptSize, radius: BorderRadius.circular(35.h), alignment: Alignment.center), CustomIconButton(height: 24.adaptSize, width: 24.adaptSize, padding: EdgeInsets.all(6.h), decoration: IconButtonStyleHelper.outlineGrayTL12, alignment: Alignment.bottomRight, onTap: () {onTapBtnTelevision();}, child: CustomImageView(imagePath: ImageConstant.imgTelevisionGray50))])), SizedBox(height: 8.v), Text("msg_cameron_williamson".tr, style: CustomTextStyles.titleMediumBold_1), SizedBox(height: 4.v), Text("lbl_hello_gmail_com".tr, style: CustomTextStyles.titleSmallBluegray500Medium), SizedBox(height: 31.v), Align(alignment: Alignment.centerLeft, child: Text("lbl_home_search".tr, style: CustomTextStyles.titleSmallBluegray500)), SizedBox(height: 15.v), _buildMyFavorites(text: "lbl_recently_viewed".tr, onTapMyFavorites: () {onTapMyFavorites();}), SizedBox(height: 16.v), _buildMyFavorites(text: "lbl_my_favorites".tr, onTapMyFavorites: () {onTapMyFavorites1();}), SizedBox(height: 16.v), _buildMyFavorites(text: "lbl_past_tour".tr, onTapMyFavorites: () {onTapMyFavorites2();}), SizedBox(height: 32.v), Align(alignment: Alignment.centerLeft, child: Text("lbl_general".tr, style: CustomTextStyles.titleSmallBluegray500)), SizedBox(height: 16.v), _buildMyFavorites(text: "lbl_sell_my_home".tr), SizedBox(height: 16.v), _buildMyFavorites(text: "lbl_my_listings".tr, onTapMyFavorites: () {onTapMyFavorites3();}), SizedBox(height: 16.v), _buildMyFavorites(text: "lbl_settings".tr, onTapMyFavorites: () {onTapMyFavorites4();}), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 64.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeftPrimarycontainer, margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 8.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitleTwo(text: "lbl_profile".tr), styleType: Style.bgFill); } 
/// Common widget
Widget _buildMyFavorites({required String text, Function? onTapMyFavorites, }) { return GestureDetector(onTap: () {onTapMyFavorites!.call();}, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomIconButton(height: 40.adaptSize, width: 40.adaptSize, padding: EdgeInsets.all(10.h), decoration: IconButtonStyleHelper.fillGray, child: CustomImageView(imagePath: ImageConstant.imgFavoritePrimary)), Padding(padding: EdgeInsets.only(left: 16.h, top: 12.v, bottom: 7.v), child: Text(text, style: theme.textTheme.titleSmall!.copyWith(color: theme.colorScheme.primaryContainer))), Spacer(), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.symmetric(vertical: 10.v))])); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
/// Navigates to the editProfileScreen when the action is triggered.
onTapBtnTelevision() { Get.toNamed(AppRoutes.editProfileScreen, ); } 
/// Navigates to the recentlyViewsScreen when the action is triggered.
onTapMyFavorites() { Get.toNamed(AppRoutes.recentlyViewsScreen, ); } 
/// Navigates to the favoriteScreen when the action is triggered.
onTapMyFavorites1() { Get.toNamed(AppRoutes.favoriteScreen, ); } 
/// Navigates to the pastToursScreen when the action is triggered.
onTapMyFavorites2() { Get.toNamed(AppRoutes.pastToursScreen, ); } 
/// Navigates to the homeListingScreen when the action is triggered.
onTapMyFavorites3() { Get.toNamed(AppRoutes.homeListingScreen, ); } 
/// Navigates to the settingsScreen when the action is triggered.
onTapMyFavorites4() { Get.toNamed(AppRoutes.settingsScreen, ); } 
 }
