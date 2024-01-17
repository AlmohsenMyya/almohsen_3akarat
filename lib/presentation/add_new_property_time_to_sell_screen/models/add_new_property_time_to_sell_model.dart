import '../../../core/app_export.dart';import 'addnewpropertytimetosell_item_model.dart';/// This class defines the variables used in the [add_new_property_time_to_sell_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddNewPropertyTimeToSellModel {Rx<List<AddnewpropertytimetosellItemModel>> addnewpropertytimetosellItemList = Rx([AddnewpropertytimetosellItemModel(duration: "Within 3 days".obs),AddnewpropertytimetosellItemModel(duration: "Within 1 week".obs),AddnewpropertytimetosellItemModel(duration: "Within 1 month".obs),AddnewpropertytimetosellItemModel(duration: "Within 2 months".obs),AddnewpropertytimetosellItemModel(duration: "In more than 2 months".obs),AddnewpropertytimetosellItemModel(duration: "I’m not sure".obs)]);

 }
