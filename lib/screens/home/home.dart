import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'mobile.dart';
import 'tablet.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      if (screenType == ScreenType.mobile) return const Mobile();
      return const Tablet();
    });
  }
}
