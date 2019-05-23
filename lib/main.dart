import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:real_estate_circle/pages/house_recomm.dart';
import 'package:real_estate_circle/localizations.dart';
import 'package:real_estate_circle/main_drawer.dart';
import 'package:real_estate_circle/pages/new_condo_recomm.dart';
import 'package:real_estate_circle/pages/new_house_recomm.dart';
import 'package:real_estate_circle/pages/real_estate_news.dart';

class RealEstateCircleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Container(
            child: CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  title: Text(RecLocalizations.of(context).title),
                  pinned: true,
                  expandedHeight: 250.0,
                  flexibleSpace: FlexibleSpaceBar(
                      centerTitle: true,
                      title: Text(
                          '\r\n\r\n\r\n\r\n\r\n' +
                              RecLocalizations.of(context).subTitle,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold)),
                      background: Image.network(
                        "https://58realty.so.house/media/background/dichanquan-banner4.jpg",
                        fit: BoxFit.cover,
                      )),
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: HouseRecomm(),
                    ),
                  ]),
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: NewHouseRecomm(),
                    ),
                  ]),
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: NewCondoRecomm(),
                    ),
                  ]),
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: RealEstateNews(),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
        drawer: MainDrawer());
  }
}

class RealEstateCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (BuildContext context) =>
          RecLocalizations.of(context).title,
      localizationsDelegates: [
        const RecLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''),
        const Locale('zh', ''),
      ],
      // Watch out: MaterialApp creates a Localizations widget
      // with the specified delegates. DemoLocalizations.of()
      // will only find the app's Localizations widget if its
      // context is a child of the app.
      home: RealEstateCircleApp(),
    );
  }
}

void main() {
  runApp(RealEstateCircle());
}
