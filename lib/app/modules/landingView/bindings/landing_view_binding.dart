import 'package:get/get.dart';
import 'package:onex/app/modules/allChats/controllers/all_chats_controller.dart';
import 'package:onex/app/modules/categoryResult/controllers/category_result_controller.dart';
import 'package:onex/app/modules/home/controllers/home_controller.dart';
import 'package:onex/app/modules/orders/controllers/orders_controller.dart';
import 'package:onex/app/modules/profile/controllers/profile_controller.dart';

import '../controllers/landing_view_controller.dart';

class LandingViewBinding extends Bindings {
  @override
  void dependencies() {
    Get
    ..lazyPut<LandingViewController>(
      () => LandingViewController(),
    )
    ..lazyPut<HomeController>(() => HomeController(
    ),)
     ..lazyPut<CategoryResultController>(() => CategoryResultController(
    ),)
     ..lazyPut<AllChatsController>(() => AllChatsController(
    ),)
     ..lazyPut<OrdersController>(() => OrdersController(
    ),)
    ..lazyPut<ProfileController>(() => ProfileController(
      
    ));
  }
}
