import 'package:almohsen_3akarat/core/app_export.dart';import 'package:almohsen_3akarat/presentation/home_search_page/models/home_search_model.dart';import 'package:flutter/material.dart';/// A controller class for the HomeSearchPage.
///
/// This class manages the state of the HomeSearchPage, including the
/// current homeSearchModelObj
class HomeSearchController extends GetxController {HomeSearchController(this.homeSearchModelObj);

TextEditingController searchController = TextEditingController();

Rx<HomeSearchModel> homeSearchModelObj;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
