import 'package:get_it/get_it.dart';

import './core/Dish_list.dart';

GetIt locator = GetIt();

void setupLocator() {
  locator.registerFactory(() => FoodList()) ;
}