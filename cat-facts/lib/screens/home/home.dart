import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:catfacts/state/data/fact/fact_bloc.dart';

import 'mobile.dart';
import 'tablet.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FactBloc(),
      child: ResponsiveSizer(builder: (context, orientation, screenType) {
        if (screenType == ScreenType.mobile) return const Mobile();
        return const Tablet();
      }),
    );
  }
}
