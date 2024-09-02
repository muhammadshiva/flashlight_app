import 'package:get/get.dart';
    import 'package:flashlight_cashier/features/transaction/controllers/transaction_controller.dart';
    class TransactionBinding extends Bindings {
      @override
      void dependencies() {
        Get.put(TransactionController());
      }
    }
    