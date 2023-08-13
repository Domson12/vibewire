

import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class Validators {
  static String? validateEmail(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return S.of(context).empty_field;
    }
    if (!RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)) {
      return S.of(context).invalid_email;
    }
    return null;
  }

  static String? validatePassword(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return S.of(context).empty_field;
    }
    //regx for password validation
    if (!RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$").hasMatch(value)) {
      return S.of(context).invalid_password;
    }
    return null;
  }

  static String? validateName(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return S.of(context).empty_field;
    }
    if (value.length < 3) {
      return S.of(context).invalid_name;
    }
    return null;
  }

  static String? validatePhone(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return S.of(context).empty_field;
    }
    if (!RegExp(r"^[0-9]{9}$").hasMatch(value)) {
      return S.of(context).invalid_phone;
    }
    return null;
  }

}