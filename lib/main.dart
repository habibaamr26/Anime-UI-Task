import 'package:flutter/material.dart';
import 'app/routs/app_routs.dart';
void main() {
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
