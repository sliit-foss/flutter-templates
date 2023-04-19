import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Cache {

  static const storage = FlutterSecureStorage();
  static const aOptions = AndroidOptions(encryptedSharedPreferences: true);
  static const iOptions = IOSOptions(accessibility: KeychainAccessibility.first_unlock);

  static save(String key, String data) async {
    await storage.write(key: key, value: data, aOptions: aOptions, iOptions: iOptions);
  }

  static Future<String?> retrieve(String key) async {
    return await storage.read(key: key, aOptions: aOptions, iOptions: iOptions);
  }

  static clear() {
    storage.deleteAll();
  }

}
