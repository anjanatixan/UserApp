import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sampleuser/provider/user_provider.dart';
import 'package:sampleuser/views/user_list.dart';

import 'helper/navigation.dart';

void main() {
  runApp(MultiProvider(
    providers: [
     ChangeNotifierProvider(create: ((context) => UserProvider()))
      
    ],
    child: MyApp(),
  ));
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
        return MaterialApp(
            navigatorKey: NavigationService.navigatorKey,
            debugShowCheckedModeBanner: false,
            home: UserListScreen());
      },
    );
  }
}


