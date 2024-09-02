import 'package:flashlight_cashier/utils/enums/flavor_enum.dart';

class CoreEnvirontmentFunction {
  //* Create Singleton
  CoreEnvirontmentFunction._();

  //* Other Variables
  static Flavor currentFlavor = Flavor.development;

  static String appBaseUrl() {
    switch (currentFlavor) {
      case Flavor.development:
        return '';
      case Flavor.staging:
        return '';
      default:
        return '';
    }
  }

  static String tagFlavor() {
    switch (currentFlavor) {
      case Flavor.development:
        return 'dev';
      case Flavor.staging:
        return 'staging';
      default:
        return 'prod';
    }
  }
}
