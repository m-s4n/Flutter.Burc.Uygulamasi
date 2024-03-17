import 'package:app_burc/models/burc.dart';
import 'package:app_burc/pages/burc_detay_page.dart';
import 'package:app_burc/pages/burc_liste_page.dart';
import 'package:app_burc/pages/not_found_page.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static Route<dynamic>? appRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (context) => const BurcListePage(), settings: settings);

      case 'burc-detay':
        return MaterialPageRoute(
            builder: (context) =>
                BurcDetayPage(burc: settings.arguments as Burc),
            settings: settings);

      default:
        return MaterialPageRoute(
          builder: (context) => const NotFoundPage(),
        );
    }
  }
}
