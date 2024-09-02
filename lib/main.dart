import 'package:flashlight_cashier/utils/functions/core_environtment_function.dart';
import 'package:flashlight_cashier/utils/my_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  //* Force orientation screen always landscape
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);

  //* Init Environtment

  //
  runApp(const MyApp());
}
