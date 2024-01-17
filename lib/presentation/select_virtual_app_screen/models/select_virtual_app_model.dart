import '../../../core/app_export.dart';import 'selectvirtualapp_item_model.dart';/// This class defines the variables used in the [select_virtual_app_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SelectVirtualAppModel {Rx<List<SelectvirtualappItemModel>> selectvirtualappItemList = Rx([SelectvirtualappItemModel(whatsapp:ImageConstant.imgWhatsapp.obs,whatsapp1: "Whatsapp".obs,recommend: "Recommend".obs,check:ImageConstant.imgCheck.obs)]);

 }
