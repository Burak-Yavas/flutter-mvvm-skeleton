import 'package:dio/dio.dart';
import 'package:mvvm_skeleton/core/constants/enums/locale_keys_enums.dart';

import '../cache/locale_manager.dart';
import 'core_dio.dart';
import 'core_dio_interface.dart';

class NetworkManager {
  static NetworkManager? _instance;
  static NetworkManager? get instance {
    _instance ??= NetworkManager._init();
    return _instance;
  }

  ICoreDio? coreDio;

  NetworkManager._init() {
    final baseOptions = BaseOptions(headers: {
      'val': LocaleManager.instance.getStringValue(PreferencesKeys.TOKEN)
    });
    coreDio = CoreDio(baseOptions);
  }
}
