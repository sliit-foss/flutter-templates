import 'dart:io';
import 'package:catfacts/config/themes/themes.dart';
import 'package:catfacts/state/global/global_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:catfacts/config/secrets.dart';
import 'package:catfacts/utils/app_http_overrides.dart';
import 'package:catfacts/screens/home/home.dart';

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
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: Themes.list[state.theme],
            home: const Home(title: 'Flutter Demo Home Page'),
          );
        },
      ),
    );
  }
}
