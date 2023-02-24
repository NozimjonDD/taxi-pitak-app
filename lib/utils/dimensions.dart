import 'package:get/get.dart';

class Dimensions{
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageView = screenHeight/2.64;
  static double pageViewContainer = screenHeight/3.84;
  static double pageViewTextContainer = screenHeight/6.03; // ==>7.03

  //dynamic height padding and magrin
  static double height1 = screenHeight/844;
  static double height10 = screenHeight/84.4;
  static double height15 = screenHeight/56.27;
  static double height16 = screenHeight/52.75;
  static double height20 = screenHeight/42.2;
  static double height25 = screenHeight/33.76;
  static double height30 = screenHeight/28.13;
  static double height45 = screenHeight/18.76;
  static double height50 = screenHeight/16.88;
  static double height410 = screenHeight/2.05;
  static double height500 = screenHeight/1.68;

  //dynamic width padding and margin
  static double width10 = screenHeight/84.4;
  static double width15 = screenHeight/56.27;
  static double width20 = screenHeight/42.2;
  static double width30 = screenHeight/28.13;
  static double width45 = screenHeight/18.76;

  //sont size
  static double font16 = screenHeight/52.75;
  static double font18 = screenHeight/46.88;
  static double font20 = screenHeight/42.2;
  static double font26 = screenHeight/32.46;
  static double font50 = screenHeight/16.88;

  // radius
  static double radius15 = screenHeight/56.27;
  static double radius20 = screenHeight/42.2;
  static double radius30 = screenHeight/28.13;
  static double radius35 = screenHeight/24.11;

  //icon Size
  static double iconSize24 = screenHeight/35.17;
  static double iconSize16 = screenHeight/52.75;

  //list view size
  static double listViewImgSize = screenWidth/3.25;
  static double listViewTextContSize = screenWidth/3.9;

  //popular food
  static double popularFoodImgSize = screenWidth/2.41;

  // bottom heigth
  static double bottomHeightBar = screenWidth/7.03;

}