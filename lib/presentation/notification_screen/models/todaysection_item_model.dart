import '../../../core/app_export.dart';/// This class is used in the [todaysection_item_widget] screen.
class TodaysectionItemModel {TodaysectionItemModel({this.groupBy, this.id, }) { groupBy = groupBy  ?? Rx("");id = id  ?? Rx(""); }

Rx<String>? groupBy;

Rx<String>? id;

 }
