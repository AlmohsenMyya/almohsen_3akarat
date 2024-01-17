import 'package:almohsen_3akarat/core/app_export.dart';import 'package:almohsen_3akarat/presentation/filter_page/models/filter_model.dart';/// A controller class for the FilterPage.
///
/// This class manages the state of the FilterPage, including the
/// current filterModelObj
class FilterController extends GetxController {FilterController(this.filterModelObj);

Rx<FilterModel> filterModelObj;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

SelectionPopupModel? selectedDropDownValue2;

SelectionPopupModel? selectedDropDownValue3;

onSelected(dynamic value) { for (var element in filterModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} filterModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in filterModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} filterModelObj.value.dropdownItemList1.refresh(); } 
onSelected2(dynamic value) { for (var element in filterModelObj.value.dropdownItemList2.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} filterModelObj.value.dropdownItemList2.refresh(); } 
onSelected3(dynamic value) { for (var element in filterModelObj.value.dropdownItemList3.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} filterModelObj.value.dropdownItemList3.refresh(); } 
 }
