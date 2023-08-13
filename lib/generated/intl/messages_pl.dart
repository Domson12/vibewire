// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pl locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'pl';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "confirm_password":
            MessageLookupByLibrary.simpleMessage("Potwierdź hasło"),
        "empty_field":
            MessageLookupByLibrary.simpleMessage("pole nie może być puste"),
        "have_account": MessageLookupByLibrary.simpleMessage("Masz już konto?"),
        "invalid_email":
            MessageLookupByLibrary.simpleMessage("wpisz poprawny email"),
        "invalid_name": MessageLookupByLibrary.simpleMessage(
            "Imię musi mieć co najmniej 3 znaki"),
        "invalid_password": MessageLookupByLibrary.simpleMessage(
            "hasło musi mieć co najmniej 6 znaków, w tym jedną cyfrę, jedną wielką literę i jedną małą literę"),
        "invalid_phone": MessageLookupByLibrary.simpleMessage(
            "Niepoprawny numer telefonu. Numer musi mieć 9 cyfr (polski numer)"),
        "login": MessageLookupByLibrary.simpleMessage("Zaloguj się"),
        "name": MessageLookupByLibrary.simpleMessage("Imię"),
        "password": MessageLookupByLibrary.simpleMessage("Hasło"),
        "register": MessageLookupByLibrary.simpleMessage("Zarejestruj się"),
        "surname": MessageLookupByLibrary.simpleMessage("Nazwisko")
      };
}
