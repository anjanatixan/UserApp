import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:sampleuser/helper/get_it.dart';

import 'bloc/data_list_bloc.dart';
import 'helper/router.dart';



void main() {
   setupGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      designSize: const Size(360, 740),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp.router(
       routerConfig: router,
            // navigatorKey: NavigationService.navigatorKey,
            debugShowCheckedModeBanner: false,
            // home: UserListScreen()
            );
      },
    );
  }
}
