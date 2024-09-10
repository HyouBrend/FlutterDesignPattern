import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'route_handlers.dart';

class Routes {
  static String home = "/";
  // static String Apps = "/apps";

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      print("404 Page Not Found");
      return;
    });
    router.define(home,
        handler: homeHandler,
        transitionType: TransitionType.inFromLeft,
        transitionDuration: const Duration(milliseconds: 650));
    // router.define( Apps,
    // handler: appsHandler,
    // transitionType: TransitionType.inFromLeft,
    // transitionDuration: Duration(milliseconds: 650));
  }
}
