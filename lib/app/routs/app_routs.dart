

import 'package:flutter/material.dart';
import '../../presentation/details_screen/view/details_screen_view.dart';
import '../../presentation/home_screen/view/home_view.dart';
import '../../presentation/upgrade_plane/view/upgrade_plane_screen.dart';

class AppRouts{

  Route<dynamic> getRouts(RouteSettings settings)
  {
    switch (settings.name)
        {
      case "/": return MaterialPageRoute(builder: (_)=>HomeScreen());
      case "DetailsScreen": return MaterialPageRoute(builder: (_)=>DetailsScreen());
      case "UpgradePlaneScreen": return MaterialPageRoute(builder: (_)=>UpgradePlaneScreen());
      default : return MaterialPageRoute(builder: (_)=>ErrorInNavigation());
    }

  }
}

class ErrorInNavigation extends StatelessWidget {
  const ErrorInNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
