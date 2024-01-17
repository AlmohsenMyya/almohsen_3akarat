import '../../../core/app_export.dart';import 'propertylist_item_model.dart';/// This class defines the variables used in the [my_home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyHomeModel {Rx<List<PropertylistItemModel>> propertylistItemList = Rx([PropertylistItemModel(primaryApartment: "Primary Apartment".obs,three: "3".obs,two: "2".obs,price: "1,600 - 1,800 ".obs),PropertylistItemModel(primaryApartment: "Primary Apartment".obs,price: "1,600 - 1,800 ".obs),PropertylistItemModel(primaryApartment: "Primary Apartment".obs,price: "1,600 - 1,800 ".obs)]);

 }
