import '../../../core/app_export.dart';/// This class is used in the [time1_item_widget] screen.
class Time1ItemModel {Time1ItemModel({this.time, this.id, }) { time = time  ?? Rx("9:00 AM");id = id  ?? Rx(""); }

Rx<String>? time;

Rx<String>? id;

 }
