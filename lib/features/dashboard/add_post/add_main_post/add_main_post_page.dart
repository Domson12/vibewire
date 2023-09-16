import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import '../../../../core/common/widget/app_elevated_button.dart';
import '../../../../locale_model.dart';
import '../../../../generated/l10n.dart';

@RoutePage()
class AddMainPostPage extends StatelessWidget implements AutoRouteWrapper {
  const AddMainPostPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    // TODO: implement wrappedRoute
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<LocaleModel>(
      builder: (context, child, model) {
        return Scaffold(
          body: Center(
            child: AppElevatedButton(
              onPressed: () {
                model.changeLocale();
              },
              child: Text(S.of(context).change_locale),
            ),
          ),
        );
      },
    );
  }
}
