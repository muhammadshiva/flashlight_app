import 'package:get/get.dart';
    import 'package:flashlight_cashier/features/customer_type/controllers/customer_type_controller.dart';
    class CustomerTypeBinding extends Bindings {
      @override
      void dependencies() {
        Get.put(CustomerTypeController());
      }
    }
    