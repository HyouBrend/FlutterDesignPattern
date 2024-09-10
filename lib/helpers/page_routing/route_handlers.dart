import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import '../../pages/home_page.dart';

var homeHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const HomePage();
});


/* var appsHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return appsHandler();
}); */
