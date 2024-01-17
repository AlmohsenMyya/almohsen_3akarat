import '../controller/favorite_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FavoriteScreen.
///
/// This class ensures that the FavoriteController is created when the
/// FavoriteScreen is first loaded.
class FavoriteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FavoriteController());
  }
}
