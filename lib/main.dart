import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'quiz_page/appRoutes.dart';
import 'pages/binding.dart';
import 'pages/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initFireBase();
  InitialBinding().dependencies();

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: navigatorKey,
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.black),

      getPages: AppRoutes.pages(),
      debugShowCheckedModeBanner: false,
    );
  }
}

  Future<void> initFireBase() async {
    await Firebase.initializeApp(
      name: 'Quizzy',
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

