import 'package:enhanced_http/enhanced_http.dart';
import 'package:catfacts/config/secrets.dart';

EnhancedHttp http = EnhancedHttp(baseURL: Secrets.serverUrl);