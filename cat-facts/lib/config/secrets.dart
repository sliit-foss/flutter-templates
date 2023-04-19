import 'package:flutter_dotenv/flutter_dotenv.dart';

class Secrets {
  static const _appEnv = "APP_ENV";
  static const _serverUrl = "SERVER_URL";

  static const String appEnv = String.fromEnvironment(_appEnv, defaultValue: "local");
  static final String serverUrl = (const bool.hasEnvironment(_serverUrl) ? const String.fromEnvironment(_serverUrl) : dotenv.env[_serverUrl])!;
}
