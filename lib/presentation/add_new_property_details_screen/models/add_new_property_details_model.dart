import '../../../core/app_export.dart';import 'addnewpropertydetails_item_model.dart';/// This class defines the variables used in the [add_new_property_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddNewPropertyDetailsModel {Rx<List<AddnewpropertydetailsItemModel>> addnewpropertydetailsItemList = Rx([AddnewpropertydetailsItemModel(estimatePrice: "Estimate price".obs,price: "4,200.00".obs,widget: "-4%".obs),AddnewpropertydetailsItemModel(estimatePrice: "Sale activity".obs,price: "1 Sold".obs,widget: "+102.6%".obs),AddnewpropertydetailsItemModel(estimatePrice: "Average price".obs,price: "4,600.00".obs,widget: "+23.6%".obs)]);

 }
