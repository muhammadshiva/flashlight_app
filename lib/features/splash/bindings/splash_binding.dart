import 'package:get/get.dart';
    import 'package:flashlight_cashier/features/splash/controllers/splash_controller.dart';
    class SplashBinding extends Bindings {
      @override
      void dependencies() {
        Get.put(SplashController());
      }
    }
    