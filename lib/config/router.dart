import 'package:flutter/material.dart';
import 'package:information_service/presentation/pages/splash_page.dart';
import 'package:information_service/presentation/widgets/error_view.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashPage());
  
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return const Scaffold(
        body: ErrorView(message: 'Page not found'),
      );
    });
  }
}