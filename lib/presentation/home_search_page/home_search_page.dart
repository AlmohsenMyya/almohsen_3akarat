import '../home_search_page/widgets/homesearch_item_widget.dart';import 'controller/home_search_controller.dart';import 'models/home_search_model.dart';import 'models/homesearch_item_model.dart';import 'package:almohsen_3akarat/core/app_export.dart';import 'package:almohsen_3akarat/widgets/app_bar/appbar_title_searchview.dart';import 'package:almohsen_3akarat/widgets/app_bar/appbar_trailing_iconbutton_one.dart';import 'package:almohsen_3akarat/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class HomeSearchPage extends StatelessWidget {HomeSearchPage({Key? key}) : super(key: key);

HomeSearchController controller = Get.put(HomeSearchController(HomeSearchModel().obs));

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 12.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Row(children: [CustomImageView(imagePath: ImageConstant.imgBrightness, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(bottom: 2.v)), Padding(padding: EdgeInsets.only(left: 12.h, top: 2.v), child: Text("msg_or_use_my_current".tr, style: theme.textTheme.titleSmall))]), SizedBox(height: 31.v), Text("lbl_search_results".tr, style: CustomTextStyles.titleSmallBluegray500_1), SizedBox(height: 18.v), _buildHomeSearch()])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(title: AppbarTitleSearchview(margin: EdgeInsets.only(left: 24.h), hintText: "msg_360_stillwater_rd".tr, controller: controller.searchController), actions: [AppbarTrailingIconbuttonOne(imagePath: ImageConstant.imgFile, margin: EdgeInsets.fromLTRB(8.h, 4.v, 24.h, 4.v), onTap: () {onTapFile();})]); } 
/// Section Widget
Widget _buildHomeSearch() { return Expanded(child: Padding(padding: EdgeInsets.only(right: 78.h), child: Obx(() => ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 17.v);}, itemCount: controller.homeSearchModelObj.value.homesearchItemList.value.length, itemBuilder: (context, index) {HomesearchItemModel model = controller.homeSearchModelObj.value.homesearchItemList.value[index]; return HomesearchItemWidget(model, onTapSearch: () {onTapSearch();});})))); } 
/// Navigates to the productDetailsScreen when the action is triggered.
onTapSearch() { Get.toNamed(AppRoutes.productDetailsScreen); } 
/// Navigates to the filterTabContainerScreen when the action is triggered.
onTapFile() { Get.toNamed(AppRoutes.filterTabContainerScreen, ); } 
 }
