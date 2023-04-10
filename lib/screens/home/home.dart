import 'package:flutter/material.dart';
import 'package:catfacts/components/common/common.dart';

import 'mobile.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveBuilder(
      mobile: Mobile(),
    );
  }
}
