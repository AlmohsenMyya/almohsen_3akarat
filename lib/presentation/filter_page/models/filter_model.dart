import 'package:almohsen_3akarat/data/models/selectionPopupModel/selection_popup_model.dart';import 'propertytypechipview_item_model.dart';import 'optionschipview_item_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [filter_page],
/// and is typically used to hold data that is passed between different parts of the application.
class FilterModel {Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<List<SelectionPopupModel>> dropdownItemList1 = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<List<SelectionPopupModel>> dropdownItemList2 = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<List<SelectionPopupModel>> dropdownItemList3 = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<List<PropertytypechipviewItemModel>> propertytypechipviewItemList = Rx(List.generate(5,(index) =>PropertytypechipviewItemModel()));

Rx<List<OptionschipviewItemModel>> optionschipviewItemList = Rx(List.generate(8,(index) =>OptionschipviewItemModel()));

 }
