import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:catfacts/config/themes/themes.dart';
import 'package:catfacts/config/secrets.dart';
import 'package:catfacts/routes/routes.dart';
import 'package:catfacts/screens/home/home.dart';
import 'package:catfacts/state/ui/global/global_bloc.dart';
import 'package:catfacts/utils/app_http_overrides.dart';

void main() async {
  Paint.enableDithering = true;
  WidgetsFlutterBinding.ensureInitialized();
  if (Secrets.appEnv == "local") {
    HttpOverrides.global = AppHttpOverrides();
    await dotenv.load(fileName: ".env");
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => GlobalBloc())],
      child: BlocBuilder<GlobalBloc, GlobalState>(
        builder: (context, state) {
          return MaterialApp(
            onGenerateTitle: (context) => AppLocalizations.of(context)!.title,
            debugShowCheckedModeBanner: false,
            theme: Themes.list[state.theme],
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            locale: Locale(state.locale),
            onGenerateRoute: Routes.onGenerateRoute,
            home: const Home(),
          );
        },
      ),
    );
  }
}
