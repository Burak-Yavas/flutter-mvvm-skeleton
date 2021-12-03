import 'package:flutter/material.dart';
import 'package:mvvm_skeleton/core/init/cache/locale_manager.dart';
import 'package:mvvm_skeleton/core/init/navigation/navigation_service.dart';

abstract class BaseViewModel {
  late BuildContext context;

  LocaleManager localeManager = LocaleManager.instance;
  NavigationService navigation = NavigationService.instance;

  void setContext(BuildContext context);
  void init();
}
