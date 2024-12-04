import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipes/core/myrouter/routerApp.dart';


void main() {
  runApp(const Recipes());
}

class Recipes extends StatelessWidget {
  const Recipes({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
      return MaterialApp.router(
      debugShowCheckedModeBanner: false,
   routerConfig:Routerapp.router ,
    );
    },);
  }
}
