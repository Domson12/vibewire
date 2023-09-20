import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'locale_selector.dart';
import 'my_app.dart';

class ScopeModelWrapper extends StatelessWidget {
  const ScopeModelWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return ScopedModel<LocaleModel>(model: LocaleModel(), child: MyApp());
  }
}
