import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/splash/presentation/splash_view.dart';

void main() {
  runApp( FruitsMarket());
}

class FruitsMarket extends StatelessWidget {
  const FruitsMarket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
     // theme:ThemeData(backgroundColor: Colors.white) ,
      theme:  ThemeData(scaffoldBackgroundColor: const Color(0xFFEFEFEF)),
      //color
      // : Colors.white,
      home: SplashView(),
    );
  }
}
