import 'imageanddetails_item_model.dart';import '../../../core/app_export.dart';import 'images_item_model.dart';import 'cards_item_model.dart';/// This class defines the variables used in the [product_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductDetailsModel {Rx<List<ImageanddetailsItemModel>> imageanddetailsItemList = Rx(List.generate(1,(index) => ImageanddetailsItemModel()));

Rx<List<ImagesItemModel>> imagesItemList = Rx([ImagesItemModel(one:ImageConstant.img1.obs)]);

Rx<List<CardsItemModel>> cardsItemList = Rx([CardsItemModel(image:ImageConstant.imgRectangle4224.obs,theNewSchoolAt: "The New School At South Shore".obs,publicPrekEight: "Public, Prek-8 - 583 students - 0.4 mi".obs,reviewsCounter: "12 reviews".obs),CardsItemModel(image:ImageConstant.imgRectangle422462x62.obs,theNewSchoolAt: "Wing Luke Elementary School".obs,publicPrekEight: "Public, K-5 - 331 students - 0.4 mi".obs,reviewsCounter: "0 reviews".obs),CardsItemModel(image:ImageConstant.imgRectangle42241.obs,theNewSchoolAt: "Pathfinder K-8".obs,publicPrekEight: "Public, K-8 - 488 students - 4.5 mi".obs)]);

 }
