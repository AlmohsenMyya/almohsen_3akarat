import '../../../core/app_export.dart';/// This class is used in the [propertylist_item_widget] screen.
class PropertylistItemModel {PropertylistItemModel({this.primaryApartment, this.three, this.two, this.price, this.id, }) { primaryApartment = primaryApartment  ?? Rx("Primary Apartment");three = three  ?? Rx("3");two = two  ?? Rx("2");price = price  ?? Rx("1,600 - 1,800 ");id = id  ?? Rx(""); }

Rx<String>? primaryApartment;

Rx<String>? three;

Rx<String>? two;

Rx<String>? price;

Rx<String>? id;

 }
