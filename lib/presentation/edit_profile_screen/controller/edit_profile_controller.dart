import 'package:almohsen_3akarat/core/app_export.dart';import 'package:almohsen_3akarat/presentation/edit_profile_screen/models/edit_profile_model.dart';import 'package:flutter/material.dart';import 'package:almohsen_3akarat/data/models/me/get_me_resp.dart';import 'package:almohsen_3akarat/data/apiClient/api_client.dart';import 'package:fluttertoast/fluttertoast.dart';/// A controller class for the EditProfileScreen.
///
/// This class manages the state of the EditProfileScreen, including the
/// current editProfileModelObj
class EditProfileController extends GetxController {TextEditingController editProfileFullNameController = TextEditingController();

TextEditingController editProfileEmailController = TextEditingController();

TextEditingController editProfileAddressController = TextEditingController();

TextEditingController editProfilePasswordController = TextEditingController();

Rx<EditProfileModel> editProfileModelObj = EditProfileModel().obs;

GetMeResp getMeResp = GetMeResp();

@override void onClose() { super.onClose(); editProfileFullNameController.dispose(); editProfileEmailController.dispose(); editProfileAddressController.dispose(); editProfilePasswordController.dispose(); } 
/// Calls the https://nodedemo.dhiwise.co/device/api/v1/user/me API with the specified request data.
///
/// The [Map] parameter represents request body
Future<void> callFetchMe() async  { try{
getMeResp   =  await Get.find<ApiClient>().fetchMe(headers: {'Content-type': 'application/json','Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxNmZiNzBhZWJiM2RiYjVlYmVkYTBmMiIsInVzZXJuYW1lIjoiT3Jpb24xNyIsImlhdCI6MTY3ODY5NjYwOH0.ooqOoYB-4yP-kNz7weVH0TSQrZ1_edFf7AMqwWLIZNU',});
_handleFetchMeSuccess();
} on GetMeResp catch(e)
{
getMeResp = e;
rethrow;
} } 
/// handles the success response for the API
void _handleFetchMeSuccess() { 

 } 
/// calls the [https://nodedemo.dhiwise.co/device/api/v1/user/me] API 
///
/// It has [GetMeReq] as a parameter which will be passed as a API request body
/// If the call is successful, the function calls the `_onFetchMeSuccess()` function.
/// If the call fails, the function calls the `_onFetchMeError()` function.
///
/// Throws a `NoInternetException` if there is no internet connection.
@override Future<void> onReady() async  { try {
await callFetchMe();_onFetchMeSuccess();} on GetMeResp {_onFetchMeError();} on NoInternetException catch (e) {Get.rawSnackbar(message: e.toString());} catch (e) {
 //TODO: Handle generic errors
} } 
void _onFetchMeSuccess() {  } 
/// Displays a toast message using the Fluttertoast library.
void _onFetchMeError() { 

Fluttertoast.showToast(msg: getMeResp.message.toString() ?? ''); } 
 }
