import 'package:flashlight_cashier/configs/routes/app_route.dart';
import 'package:flashlight_cashier/features/customer_type/bindings/customer_type_binding.dart';
import 'package:flashlight_cashier/features/customer_type/view/ui/customer_type_screen.dart';
import 'package:flashlight_cashier/features/splash/bindings/splash_binding.dart';
import 'package:flashlight_cashier/features/splash/view/ui/splash_screen.dart';
import 'package:get/route_manager.dart';

class AppPage {
  static final pages = [
    GetPage(
      name: AppRoute.splashRoute,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoute.customerTypeRoute,
      page: () => const CustomerTypeScreen(),
      binding: CustomerTypeBinding(),
    ),
  ];
}
