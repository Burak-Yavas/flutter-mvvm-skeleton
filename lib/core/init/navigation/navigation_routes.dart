import 'package:flutter/material.dart';
import '../../constants/navigation/navigation_constants.dart';
import '../../../features/dummy/view/dummy_view.dart';

class NavigationRoutes {
  static final NavigationRoutes _instance = NavigationRoutes._init();
  static NavigationRoutes get instance => _instance;

  NavigationRoutes._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.DEFAULT:
        return normalNavigate(const DummyView());
      default:
        return MaterialPageRoute(
          builder: (context) => const DummyView(),
        );
    }
  }

  MaterialPageRoute normalNavigate(Widget widget) {
    return MaterialPageRoute(
      builder: (context) => widget,
    );
  }
}
