import '../../../core/app_export.dart';/// This class is used in the [homesearch_item_widget] screen.
class HomesearchItemModel {HomesearchItemModel({this.mightyCincoFamily, this.mightyCincoFamily1, this.id, }) { mightyCincoFamily = mightyCincoFamily  ?? Rx(ImageConstant.imgImg40x40);mightyCincoFamily1 = mightyCincoFamily1  ?? Rx("Mighty Cinco Family");id = id  ?? Rx(""); }

Rx<String>? mightyCincoFamily;

Rx<String>? mightyCincoFamily1;

Rx<String>? id;

 }
