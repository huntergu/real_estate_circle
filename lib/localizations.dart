import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'l10n/messages_all.dart';
// This file was generated in two steps, using the Dart intl tools. With the
// app's root directory (the one that contains pubspec.yaml) as the current
// directory:
//
// flutter pub get
// flutter pub pub run intl_translation:extract_to_arb --output-dir=lib/l10n lib/localizations.dart
// flutter pub pub run intl_translation:generate_from_arb --output-dir=lib/l10n --no-use-deferred-loading lib/localizations.dart lib/l10n/intl_*.arb
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


///////////// Begin -- String values for the app / menu

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
  String get homePage {
    return Intl.message(
      'home page',
      name: 'homePage',
      desc: 'The Home Page',
    );
  }
  String get news {
    return Intl.message(
      'real estate news',
      name: 'news',
      desc: 'The Real Estate News Page',
    );
  }
  String get houseRecomm {
    return Intl.message(
      'House recommendation',
      name: 'houseRecomm',
      desc: 'House Recommendation',
    );
  }
  String get condoUCRecomm {
    return Intl.message(
      'Condo under construction',
      name: 'condoUCRecomm',
      desc: 'Condo under construction recommendation',
    );
  }
  String get newHouseRecomm {
    return Intl.message(
      'New House recommendation',
      name: 'newHouseRecomm',
      desc: 'New House Recommendation',
    );
  }
  String get company {
    return Intl.message(
      'company on the platform',
      name: 'company',
      desc: 'company on the platform',
    );
  }
  String get team {
    return Intl.message(
      'team on the platform',
      name: 'team',
      desc: 'team on the platform',
    );
  }
  String get agent {
    return Intl.message(
      'agent on the platform',
      name: 'agent',
      desc: 'agent on the platform',
    );
  }
  String get recFeature {
    return Intl.message(
      'Real estate circle feature',
      name: 'recFeature',
      desc: 'Real estate circle feature',
    );
  }
  String get magazine {
    return Intl.message(
      'magazin',
      name: 'magazine',
      desc: 'magazine',
    );
  }
/////////// end -- String values for the app

//////////// Begin -- common string values
  String get recommFrom {
    return Intl.message(
      'recommendation from',
      name: 'recommFrom',
    );
  }
//////////// end -- common String values

//////////// Begin -- String values for house recommendation page
  String get houseRecommTitle {
    return Intl.message(
      'hose for sale',
      name: 'houseRecommTitle',
    );
  }
//////////// end -- String values for house recommendation page

//////////// Begin -- String values for news  page
  String get reNews {
    return Intl.message(
      'real estate news',
      name: 'reNews',
    );
  }
//////////// end -- String values for house recommendation page
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