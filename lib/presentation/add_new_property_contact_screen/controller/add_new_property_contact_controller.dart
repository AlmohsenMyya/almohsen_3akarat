import 'package:almohsen_3akarat/core/app_export.dart';import 'package:almohsen_3akarat/presentation/add_new_property_contact_screen/models/add_new_property_contact_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:flutter/material.dart';/// A controller class for the AddNewPropertyContactScreen.
///
/// This class manages the state of the AddNewPropertyContactScreen, including the
/// current addNewPropertyContactModelObj
class AddNewPropertyContactController extends GetxController {TextEditingController phoneNumberController = TextEditingController();

Rx<AddNewPropertyContactModel> addNewPropertyContactModelObj = AddNewPropertyContactModel().obs;

Rx<Country> selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91').obs;

@override void onClose() { super.onClose(); phoneNumberController.dispose(); } 
 }
