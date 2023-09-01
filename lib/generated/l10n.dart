// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Pole nie może być puste`
  String get empty_field {
    return Intl.message(
      'Pole nie może być puste',
      name: 'empty_field',
      desc: '',
      args: [],
    );
  }

  /// `Wpisz poprawny email`
  String get invalid_email {
    return Intl.message(
      'Wpisz poprawny email',
      name: 'invalid_email',
      desc: '',
      args: [],
    );
  }

  /// `Hasło musi mieć co najmniej 6 znaków, w tym jedną cyfrę, jedną wielką literę i jedną małą literę`
  String get invalid_password {
    return Intl.message(
      'Hasło musi mieć co najmniej 6 znaków, w tym jedną cyfrę, jedną wielką literę i jedną małą literę',
      name: 'invalid_password',
      desc: '',
      args: [],
    );
  }

  /// `Imię musi mieć co najmniej 3 znaki`
  String get invalid_name {
    return Intl.message(
      'Imię musi mieć co najmniej 3 znaki',
      name: 'invalid_name',
      desc: '',
      args: [],
    );
  }

  /// `Niepoprawny numer telefonu. Numer musi mieć 9 cyfr (polski numer)`
  String get invalid_phone {
    return Intl.message(
      'Niepoprawny numer telefonu. Numer musi mieć 9 cyfr (polski numer)',
      name: 'invalid_phone',
      desc: '',
      args: [],
    );
  }

  /// `Zarejestruj się`
  String get register {
    return Intl.message(
      'Zarejestruj się',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Zaloguj się`
  String get login {
    return Intl.message(
      'Zaloguj się',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Potwierdź hasło`
  String get confirm_password {
    return Intl.message(
      'Potwierdź hasło',
      name: 'confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `Hasło`
  String get password {
    return Intl.message(
      'Hasło',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Nazwisko`
  String get surname {
    return Intl.message(
      'Nazwisko',
      name: 'surname',
      desc: '',
      args: [],
    );
  }

  /// `Imię`
  String get name {
    return Intl.message(
      'Imię',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Masz już konto?`
  String get have_account {
    return Intl.message(
      'Masz już konto?',
      name: 'have_account',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Zapomniałeś hasła?`
  String get forgot_password {
    return Intl.message(
      'Zapomniałeś hasła?',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Zresetuj hasło`
  String get reset_password {
    return Intl.message(
      'Zresetuj hasło',
      name: 'reset_password',
      desc: '',
      args: [],
    );
  }

  /// `Hasło jest za krótkie`
  String get password_too_short {
    return Intl.message(
      'Hasło jest za krótkie',
      name: 'password_too_short',
      desc: '',
      args: [],
    );
  }

  /// `Dodaj cyfry`
  String get add_numbers {
    return Intl.message(
      'Dodaj cyfry',
      name: 'add_numbers',
      desc: '',
      args: [],
    );
  }

  /// `Dodaj duze litery`
  String get add_capital_letters {
    return Intl.message(
      'Dodaj duze litery',
      name: 'add_capital_letters',
      desc: '',
      args: [],
    );
  }

  /// `Dodaj małe litery`
  String get add_lowercase {
    return Intl.message(
      'Dodaj małe litery',
      name: 'add_lowercase',
      desc: '',
      args: [],
    );
  }

  /// `Dodaj znaki specjalne`
  String get add_special_char {
    return Intl.message(
      'Dodaj znaki specjalne',
      name: 'add_special_char',
      desc: '',
      args: [],
    );
  }

  /// `Hasła nie są takie same`
  String get password_not_the_same {
    return Intl.message(
      'Hasła nie są takie same',
      name: 'password_not_the_same',
      desc: '',
      args: [],
    );
  }

  /// `Login Successful`
  String get login_success {
    return Intl.message(
      'Login Successful',
      name: 'login_success',
      desc: '',
      args: [],
    );
  }

  /// `lub {text} przez`
  String auth_social_text(Object text) {
    return Intl.message(
      'lub $text przez',
      name: 'auth_social_text',
      desc: '',
      args: [text],
    );
  }

  /// `Wyloguj się`
  String get logout {
    return Intl.message(
      'Wyloguj się',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `poznaj nowych ludzi, kontakty i lub znajdź nowych przyjaciół`
  String get meet_new_people {
    return Intl.message(
      'poznaj nowych ludzi, kontakty i lub znajdź nowych przyjaciół',
      name: 'meet_new_people',
      desc: '',
      args: [],
    );
  }

  /// `poznaj nowych przyjaciół lub znajdź partnera`
  String get meet_new_friend {
    return Intl.message(
      'poznaj nowych przyjaciół lub znajdź partnera',
      name: 'meet_new_friend',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'pl'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
