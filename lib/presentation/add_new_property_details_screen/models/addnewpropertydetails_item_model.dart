import '../../../core/app_export.dart';/// This class is used in the [addnewpropertydetails_item_widget] screen.
class AddnewpropertydetailsItemModel {AddnewpropertydetailsItemModel({this.estimatePrice, this.price, this.widget, this.id, }) { estimatePrice = estimatePrice  ?? Rx("Estimate price");price = price  ?? Rx("4,200.00");widget = widget  ?? Rx("-4%");id = id  ?? Rx(""); }

Rx<String>? estimatePrice;

Rx<String>? price;

Rx<String>? widget;

Rx<String>? id;

 }
