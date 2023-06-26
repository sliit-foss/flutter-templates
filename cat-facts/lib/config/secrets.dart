import 'package:flutter_dotenv/flutter_dotenv.dart';

class Secrets {
  static const _serverUrl = "SERVER_URL";

  static String? serverUrl;

  static String? appEnv = const String.fromEnvironment("APP_ENV", defaultValue: "local");

  static load() {
    serverUrl = (const bool.hasEnvironment(_serverUrl) ? const String.fromEnvironment(_serverUrl) : dotenv.env[_serverUrl])!;
  }
}
