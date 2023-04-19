import 'package:page_transition/page_transition.dart';
import 'package:catfacts/screens/home/home.dart';

class Routes {
  static const home = '/home';
  static PageTransition? onGenerateRoute(settings) {
    switch (settings.name) {
      case home:
        return PageTransition(child: const Home(), type: PageTransitionType.fade);
      default:
        return null;
    }
  }
}
