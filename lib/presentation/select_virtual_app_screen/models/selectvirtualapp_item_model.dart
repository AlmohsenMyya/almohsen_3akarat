import '../../../core/app_export.dart';import 'package:flutter/material.dart';/// This class is used in the [selectvirtualapp_item_widget] screen.
class SelectvirtualappItemModel {SelectvirtualappItemModel({this.whatsapp, this.whatsapp1, this.recommend, this.check, this.emailController, this.id, }) { whatsapp = whatsapp  ?? Rx(ImageConstant.imgWhatsapp);whatsapp1 = whatsapp1  ?? Rx("Whatsapp");recommend = recommend  ?? Rx("Recommend");check = check  ?? Rx(ImageConstant.imgCheck);emailController = emailController  ?? TextEditingController();id = id  ?? Rx(""); }

Rx<String>? whatsapp;

Rx<String>? whatsapp1;

Rx<String>? recommend;

Rx<String>? check;

TextEditingController? emailController;

Rx<String>? id;

 }
