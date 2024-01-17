import 'package:almohsen_3akarat/core/app_export.dart';import 'package:almohsen_3akarat/presentation/add_new_property_home_facts_screen/models/add_new_property_home_facts_model.dart';import 'package:flutter/material.dart';/// A controller class for the AddNewPropertyHomeFactsScreen.
///
/// This class manages the state of the AddNewPropertyHomeFactsScreen, including the
/// current addNewPropertyHomeFactsModelObj
class AddNewPropertyHomeFactsController extends GetxController {TextEditingController inputFieldsController = TextEditingController();

TextEditingController inputFieldsController1 = TextEditingController();

TextEditingController inputFieldsController2 = TextEditingController();

TextEditingController inputFieldsController3 = TextEditingController();

TextEditingController inputFieldsController4 = TextEditingController();

TextEditingController priceController = TextEditingController();

TextEditingController priceController1 = TextEditingController();

Rx<AddNewPropertyHomeFactsModel> addNewPropertyHomeFactsModelObj = AddNewPropertyHomeFactsModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); inputFieldsController.dispose(); inputFieldsController1.dispose(); inputFieldsController2.dispose(); inputFieldsController3.dispose(); inputFieldsController4.dispose(); priceController.dispose(); priceController1.dispose(); } 
onSelected(dynamic value) { for (var element in addNewPropertyHomeFactsModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} addNewPropertyHomeFactsModelObj.value.dropdownItemList.refresh(); } 
 }
