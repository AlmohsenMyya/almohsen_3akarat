import 'package:almohsen_3akarat/core/app_export.dart';import 'package:almohsen_3akarat/presentation/add_new_property_address_screen/models/add_new_property_address_model.dart';import 'package:flutter/material.dart';/// A controller class for the AddNewPropertyAddressScreen.
///
/// This class manages the state of the AddNewPropertyAddressScreen, including the
/// current addNewPropertyAddressModelObj
class AddNewPropertyAddressController extends GetxController {TextEditingController addressController = TextEditingController();

TextEditingController inputFieldsController = TextEditingController();

TextEditingController nameController = TextEditingController();

TextEditingController zipcodeController = TextEditingController();

Rx<AddNewPropertyAddressModel> addNewPropertyAddressModelObj = AddNewPropertyAddressModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); addressController.dispose(); inputFieldsController.dispose(); nameController.dispose(); zipcodeController.dispose(); } 
onSelected(dynamic value) { for (var element in addNewPropertyAddressModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} addNewPropertyAddressModelObj.value.dropdownItemList.refresh(); } 
 }
