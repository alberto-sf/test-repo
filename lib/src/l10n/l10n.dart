import 'package:demoapp/src/l10n/generated/app_localizations.dart';
import 'package:flutter/material.dart';

extension LocalizationContext on BuildContext {
  /// Returns the [AppLocalizations] instance with localized strings.
  AppLocalizations get l10n => AppLocalizations.of(this);
}
