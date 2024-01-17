import '../../../core/app_export.dart';import 'homesearch_item_model.dart';/// This class defines the variables used in the [home_search_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeSearchModel {Rx<List<HomesearchItemModel>> homesearchItemList = Rx([HomesearchItemModel(mightyCincoFamily:ImageConstant.imgImg40x40.obs,mightyCincoFamily1: "Mighty Cinco Family".obs),HomesearchItemModel(mightyCincoFamily:ImageConstant.imgImg5.obs,mightyCincoFamily1: "Casablanca Ground".obs),HomesearchItemModel(mightyCincoFamily:ImageConstant.imgImg6.obs,mightyCincoFamily1: "Primary Apartment".obs)]);

 }
