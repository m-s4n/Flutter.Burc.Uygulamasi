import 'package:flutter/material.dart';
import 'package:app_burc/data/strings.dart' as uygulama_bilgi;
import 'package:app_burc/pages/burc_liste_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.pink,
          textTheme: const TextTheme(
              bodyMedium: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
              bodySmall: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black45))),
      title: uygulama_bilgi.Strings.appName,
      home: const BurcListePage(),
    );
  }
}
