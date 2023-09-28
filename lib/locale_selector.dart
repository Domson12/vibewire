import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:scoped_model/scoped_model.dart';

@lazySingleton
class LocaleModel extends Model {
  Locale _appLocale = const Locale('pl');

  Locale get appLocal => _appLocale;

  void changeLocale() {
    switch (_appLocale.toString()) {
      case 'pl':
        _appLocale = const Locale('pl');
        break;
      case 'ar':
        _appLocale = const Locale('ar');
      case 'en':
        _appLocale = const Locale('en');
        break;
      default:
        _appLocale = const Locale('pl');
        break;
    }
    notifyListeners();
  }
}
