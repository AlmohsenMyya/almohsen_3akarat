import 'package:almohsen_3akarat/core/app_export.dart';import 'package:almohsen_3akarat/presentation/home_alarm_screen/models/home_alarm_model.dart';import 'package:flutter/material.dart';/// A controller class for the HomeAlarmScreen.
///
/// This class manages the state of the HomeAlarmScreen, including the
/// current homeAlarmModelObj
class HomeAlarmController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<HomeAlarmModel> homeAlarmModelObj = HomeAlarmModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
