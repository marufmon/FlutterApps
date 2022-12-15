import 'package:e_commerce_app/provider/categoriesprovider.dart';
import 'package:e_commerce_app/provider/orderprovider.dart';
import 'package:e_commerce_app/provider/productprovider.dart';
import 'package:e_commerce_app/screens/auth/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => OrderProvider()),
            ChangeNotifierProvider(create: (context) => CategoriesProvider()),
            ChangeNotifierProvider(create: (context) => ProductProvider()),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: SplashScreen(),
          ),
        );
      },
    );
  }
}
