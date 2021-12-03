import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:mvvm_skeleton/core/base/model/base_view_model.dart';

part 'dummy_view_model.g.dart';

class DummyViewModel = _DummyViewModelBase with _$DummyViewModel;

abstract class _DummyViewModelBase with Store, BaseViewModel {
  @observable
  int number = 0;
  @override
  void setContext(BuildContext context) => this.context = context;
  @override
  void init() {}
}
