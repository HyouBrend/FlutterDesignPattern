import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_design_pattern/helpers/page_routing/application.dart';
import 'package:flutter_design_pattern/helpers/page_routing/routes.dart';
import 'package:flutter_design_pattern/widgets/splash_screen.dart';

void main() {
  final router = FluroRouter();
  Routes.configureRoutes(router);
  Application.router = router;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Application.router.generator,
      title: 'Flutter Design Patterns',
      home: SplashScreen(),
    );
  }
}

/* class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    Application.router = router;

    return BlocProvider(
      create: (_) => ListDropdownContentBloc(
        msSampleService: MsSampleService(
          apiHelper: ApiHelperImpl(
            dio: Dio(),
          ),
        ),
      )..add(FetchListDropdownData()), // Event untuk mengambil data dropdown
      child: MMaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Application.router.generator,
      title: 'Flutter Design Patterns',
      home: SplashScreen(),
    );s
  }
} */
