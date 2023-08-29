// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(text) => "lub ${text} przez";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "add_capital_letters":
            MessageLookupByLibrary.simpleMessage("Add capital letters"),
        "add_lowercase":
            MessageLookupByLibrary.simpleMessage("Add lowercase letters"),
        "add_numbers": MessageLookupByLibrary.simpleMessage("Add numbers"),
        "add_special_char":
            MessageLookupByLibrary.simpleMessage("Add special characters"),
        "auth_social_text": m0,
        "confirm_password":
            MessageLookupByLibrary.simpleMessage("Confirm Password"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "empty_field":
            MessageLookupByLibrary.simpleMessage("Field can\'t be empty"),
        "forgot_password":
            MessageLookupByLibrary.simpleMessage("Forgot Password?"),
        "have_account":
            MessageLookupByLibrary.simpleMessage("Already have an account?"),
        "invalid_name": MessageLookupByLibrary.simpleMessage(
            "Name must be at least 3 characters"),
        "invalid_password": MessageLookupByLibrary.simpleMessage(
            "Password must be at least 8 characters, contain at least one uppercase letter, one lowercase letter and one number"),
        "invalid_phone": MessageLookupByLibrary.simpleMessage(
            "Invalid Phone Number, must be 9 digits (Polish number))"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "name": MessageLookupByLibrary.simpleMessage("Name"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "password_not_the_same":
            MessageLookupByLibrary.simpleMessage("Passwords are not the same"),
        "password_too_short":
            MessageLookupByLibrary.simpleMessage("Password is too short"),
        "register": MessageLookupByLibrary.simpleMessage("Register"),
        "reset_password":
            MessageLookupByLibrary.simpleMessage("Reset Password"),
        "surname": MessageLookupByLibrary.simpleMessage("Surname")
      };
}
