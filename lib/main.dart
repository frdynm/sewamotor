import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sewamotor/app/modules/login/views/splashscreen.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(Duration(seconds: 3)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: "Application",
              initialRoute: Routes.INTRO,
              getPages: AppPages.routes,
            );
          } else {
            return SplashScreen();
          }
        });
  }
}
