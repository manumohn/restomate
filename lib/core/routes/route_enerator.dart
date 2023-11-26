import 'package:flutter/material.dart';
import 'package:restomate/features/menu/menu_view.dart';
import 'package:restomate/features/splash/splash.dart';

import '../../features/cart/cart_view.dart';

class Routes {
  Routes._();

  static const String splashRoute = '/';
  static const String menuRoute = '/menu';
  static const String cartRoute = '/cart';
}

class RoutesGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.menuRoute:
        return MaterialPageRoute(builder: (_) => const MenuView());
      case Routes.cartRoute:
        return MaterialPageRoute(builder: (_) => const CartView());
      default:
        return fourOFour();
    }
  }

  static Route<dynamic> fourOFour() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text('Whoa')),
        body: const Center(child: Text('You are not supposed to be here!')),
      ),
    );
  }
}
