import 'package:almohsen_3akarat/core/app_export.dart';import 'package:almohsen_3akarat/presentation/select_virtual_app_screen/models/select_virtual_app_model.dart';import 'package:flutter/material.dart';/// A controller class for the SelectVirtualAppScreen.
///
/// This class manages the state of the SelectVirtualAppScreen, including the
/// current selectVirtualAppModelObj
class SelectVirtualAppController extends GetxController {Rx<SelectVirtualAppModel> selectVirtualAppModelObj = SelectVirtualAppModel().obs;

 }
