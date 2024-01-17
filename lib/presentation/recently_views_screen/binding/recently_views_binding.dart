import '../controller/recently_views_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RecentlyViewsScreen.
///
/// This class ensures that the RecentlyViewsController is created when the
/// RecentlyViewsScreen is first loaded.
class RecentlyViewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RecentlyViewsController());
  }
}
