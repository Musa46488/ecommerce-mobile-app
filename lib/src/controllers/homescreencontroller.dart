import 'package:flutter_application_1/src/constants/appimages.dart';
import 'package:flutter_application_1/src/models/diwalisalemodel.dart';
import 'package:flutter_application_1/src/models/grocerymodel.dart';
import 'package:flutter_application_1/src/models/productmodel.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeScreenController extends GetxController {
  final List<DiwaliSaleModel> diwaliSaleList = [
    DiwaliSaleModel(
      title1: 'Lights, Diyas',
      title2: '& Candles',
      image: AppImages.diyasImage,
    ),
    DiwaliSaleModel(
      title1: 'Diwali',
      title2: 'Gifts',
      image: AppImages.diwaliGiftImage,
    ),
    DiwaliSaleModel(
      title1: 'Appliances',
      title2: '& Gadgets',
      image: AppImages.applicationsImage,
    ),
    DiwaliSaleModel(
      title1: 'Home',
      title2: '& Living',
      image: AppImages.homeLivingImage,
    ),
  ];

  final List<ProductModel> productList = [
    ProductModel(
      title: 'Golden Glass Woodden Lid Candle (Oudh)',
      time: '16 MIN',
      cost: '79',
      image: AppImages.goldenGlassImage,
    ),
    ProductModel(
      title: 'Royal Gulab Jamun By Bikano',
      time: '16 MIN',
      cost: '79',
      image: AppImages.sweetsImage,
    ),
    ProductModel(
      title: 'Bikaji Bhujia',
      time: '16 MIN',
      cost: '79',
      image: AppImages.starterPackImage,
    ),
    ProductModel(
      title: 'Royal Gulab Jamun By Bikano',
      time: '16 MIN',
      cost: '79',
      image: AppImages.sweetsImage,
    ),
  ];

  final List<GroceryModel> groceryList = [
    GroceryModel(
      title: 'Vegetables & Fruits',
      image: AppImages.vegerablesFruitsImage,
    ),
    GroceryModel(title: 'Atta, Dal & Rice', image: AppImages.attaRiceImage),
    GroceryModel(title: 'Oil, Ghee & Masala', image: AppImages.oilMasalaImage),
    GroceryModel(
      title: 'Dairy, Bread & Milk',
      image: AppImages.dairyProductsImage,
    ),
    GroceryModel(
      title: 'Biscuits & Bakery',
      image: AppImages.bakeryProductsImage,
    ),
  ];
}
