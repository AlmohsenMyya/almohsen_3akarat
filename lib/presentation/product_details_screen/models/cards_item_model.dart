import '../../../core/app_export.dart';/// This class is used in the [cards_item_widget] screen.
class CardsItemModel {CardsItemModel({this.image, this.theNewSchoolAt, this.publicPrekEight, this.reviewsCounter, this.id, }) { image = image  ?? Rx(ImageConstant.imgRectangle4224);theNewSchoolAt = theNewSchoolAt  ?? Rx("The New School At South Shore");publicPrekEight = publicPrekEight  ?? Rx("Public, Prek-8 - 583 students - 0.4 mi");reviewsCounter = reviewsCounter  ?? Rx("12 reviews");id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? theNewSchoolAt;

Rx<String>? publicPrekEight;

Rx<String>? reviewsCounter;

Rx<String>? id;

 }
