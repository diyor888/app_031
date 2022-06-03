import 'package:app_031/pages/Categories.dart';
import 'package:app_031/pages/HomePage.dart';
import 'package:app_031/pages/Manage_order.dart';
import 'package:app_031/pages/account.dart';
import 'package:app_031/pages/generalPage.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        supportedLocales: [
          Locale('en', 'US'),
          // Locale('ru', 'RU'),
          Locale('uz', 'UZ')
        ],
        path: 'assets/translations',
        // <-- change the path of the translation files
        fallbackLocale: Locale('en', 'US'),
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GeneralPage(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routes: {
        GeneralPage.id: (context) => GeneralPage(),
        HomePage.id: (context) => HomePage(),
        AccountPage.id: (context) => AccountPage(),
        Manage_order.id: (context) => Manage_order(),
        Categories.id: (context) => Categories(),
      },
    );
  }
}
