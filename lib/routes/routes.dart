import 'package:catfacts/screens/home/home.dart';

class Routes {
  static const home = '/home';
  static getRouteList() {
    return {
      home: (context) => Home(),
    };
  }
}
