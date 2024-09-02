import 'package:flashlight_cashier/configs/pages/app_page.dart';
import 'package:flashlight_cashier/configs/routes/app_route.dart';
import 'package:flashlight_cashier/configs/themes/app_theme.dart';
import 'package:flashlight_cashier/utils/enums/flavor_enum.dart';
import 'package:flashlight_cashier/utils/functions/core_environtment_function.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1024, 768),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          title: 'Flashlight',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightThemeDefault,
          initialRoute: AppRoute.splashRoute,
          getPages: AppPage.pages,
          builder: (context, child) {
            var data = MediaQuery.of(context);
            switch (CoreEnvirontmentFunction.currentFlavor) {
              case Flavor.development:
                return MediaQuery(
                  data: data,
                  child: Banner(
                    message: "Dev",
                    color: Colors.amber,
                    location: BannerLocation.topEnd,
                    child: child,
                  ),
                );
              case Flavor.staging:
                return MediaQuery(
                  data: data,
                  child: Banner(
                    message: "Staging",
                    color: Colors.green,
                    location: BannerLocation.topEnd,
                    child: child,
                  ),
                );
              default:
                return MediaQuery(
                  data: data,
                  child: child!,
                );
            }
          },
        );
      },
    );
  }
}
