import 'package:flutter/material.dart';
import 'core/dependency_injection/di.dart';
import 'core/route/app_routs.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
   initAppModule();
  runApp( MyApp());
}


class MyApp extends StatelessWidget {
   MyApp({super.key});

  final appRouts=AppRouts();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouts.getRouts,
    );
  }
}
