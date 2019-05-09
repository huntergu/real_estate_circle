import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'l10n/messages_all.dart';
// This file was generated in two steps, using the Dart intl tools. With the
// app's root directory (the one that contains pubspec.yaml) as the current
// directory:
//
// flutter pub get
// flutter pub pub run intl_translation:extract_to_arb --output-dir=lib/l10n lib/main.dart
// flutter pub pub run intl_translation:generate_from_arb --output-dir=lib/l10n --no-use-deferred-loading lib/main.dart lib/l10n/intl_*.arb
//
// The second command generates intl_messages.arb and the third generates
// messages_all.dart. There's more about this process in
// https://pub.dartlang.org/packages/intl.


class RecLocalizations {
  static Future<RecLocalizations> load(Locale locale) {
    final String name = locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      return RecLocalizations();
    });
  }

  static RecLocalizations of(BuildContext context) {
    return Localizations.of<RecLocalizations>(context, RecLocalizations);
  }

  String get title {
    return Intl.message(
      'Real State Circle',
      name: 'title',
      desc: 'Title for the application',
    );
  }
  String get subTitle {
    return Intl.message(
      'News of Toronto real estate',
      name: 'subTitle',
      desc: 'Subtitle for the application',
    );
  }
}

class RecLocalizationsDelegate extends LocalizationsDelegate<RecLocalizations> {
  const RecLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'zh'].contains(locale.languageCode);

  @override
  Future<RecLocalizations> load(Locale locale) => RecLocalizations.load(locale);

  @override
  bool shouldReload(RecLocalizationsDelegate old) => false;
}