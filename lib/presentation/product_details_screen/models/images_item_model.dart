import '../../../core/app_export.dart';/// This class is used in the [images_item_widget] screen.
class ImagesItemModel {ImagesItemModel({this.one, this.id, }) { one = one  ?? Rx(ImageConstant.img1);id = id  ?? Rx(""); }

Rx<String>? one;

Rx<String>? id;

 }
