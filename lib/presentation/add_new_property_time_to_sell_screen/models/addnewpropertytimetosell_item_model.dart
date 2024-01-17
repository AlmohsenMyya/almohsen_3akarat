import '../../../core/app_export.dart';/// This class is used in the [addnewpropertytimetosell_item_widget] screen.
class AddnewpropertytimetosellItemModel {AddnewpropertytimetosellItemModel({this.duration, this.id, }) { duration = duration  ?? Rx("Within 3 days");id = id  ?? Rx(""); }

Rx<String>? duration;

Rx<String>? id;

 }
