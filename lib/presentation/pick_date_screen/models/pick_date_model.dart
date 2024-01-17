import '../../../core/app_export.dart';import 'time1_item_model.dart';/// This class defines the variables used in the [pick_date_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PickDateModel {Rx<List<Time1ItemModel>> time1ItemList = Rx([Time1ItemModel(time: "9:00 AM".obs),Time1ItemModel(time: "9:30 AM".obs),Time1ItemModel(time: "10:00 AM".obs),Time1ItemModel(time: "10:30 AM".obs)]);

 }
