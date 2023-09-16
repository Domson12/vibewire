import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:scoped_model/scoped_model.dart';

@lazySingleton
class LocaleModel extends Model {
  Locale _appLocale = const Locale('ar');
  Locale get appLocal => _appLocale;

  void changeLocale() {
    if (_appLocale == const Locale("ar")) {
      _appLocale = const Locale("en");
    } else {
      _appLocale = const Locale("ar");
    }
    notifyListeners();
  }
}
