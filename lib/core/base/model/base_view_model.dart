import 'package:flutter/material.dart';
import 'package:mvvm_skeleton/core/init/cache/locale_manager.dart';
import 'package:mvvm_skeleton/core/init/navigation/navigation_service.dart';
import 'package:mvvm_skeleton/core/init/network/core_dio_interface.dart';
import 'package:mvvm_skeleton/core/init/network/network_manager.dart';

abstract class BaseViewModel {
  late BuildContext context;

  LocaleManager localeManager = LocaleManager.instance;
  NavigationService navigation = NavigationService.instance;

  ICoreDio? coreDio = NetworkManager.instance!.coreDio;

  void setContext(BuildContext context);
  void init();
}
