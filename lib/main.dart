import '../models/flower/Flower.dart';
import '../services/ThemeAndLoginService.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'contorollers/ThemeAndLogincontroller.dart';
import 'models/user-local/LocalUser.dart';
import 'models/user-seller/Seller.dart';
import 'views/Splash.dart';
import '../constants/constans.dart';
import '../services/ThemeService.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDirectory = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  Hive
    ..registerAdapter(LocalUserAdapter())
    ..registerAdapter(FlowerAdapter())
    ..registerAdapter(SellerAdapter())
    ..registerAdapter(ThemeAndLoginServiceAdapter());
  await Hive.openBox('box');
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final ServiceCon = Get.put(ServiceController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("fa"),
        Locale("en"),
      ],
      locale: const Locale("fa"),
      title: 'گلدون من',
      theme:ThemeData(
        primarySwatch:  Colors.lightBlue,
        brightness: Brightness.light,
        primaryColor: const Color(0xFF0A0E21),
        accentColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        cardColor: const Color(0xFF0A0E21),
        cursorColor: const Color(0xFF0A0E21),
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            color: Color.fromARGB(255, 1, 95, 253),
            fontSize: 100,
          ),
          bodyText2: TextStyle(
            color: Color.fromARGB(255, 1, 95, 253),
            fontSize: 16,
          ),
        ),
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.cyan ,
        brightness: Brightness.dark,
        primaryColor: const Color(0xFF015FFD),
        accentColor: const Color(0xFF015FFD),
        scaffoldBackgroundColor: const Color(0xFF015FFD),
        cardColor: const Color(0xFF015FFD),
        cursorColor: const Color(0xFF015FFD),
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 20,
          ),
          bodyText2: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 16,
          ),
        ),
      ),
      home: Splash(),
    );
  }
}
