import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:real_estate_circle/forsale/for_sale.dart';
import 'package:real_estate_circle/localizations.dart';

class RealEstateCircleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Drawer drawer = Drawer(
        child: ListView(children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: const Text('User Name'),
            accountEmail: const Text('user@example.com'),
            currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.brown, child: new Text('UN')),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(RecLocalizations.of(context).homePage),
            onTap: () => _onListTileTap(context),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.chrome_reader_mode),
            title: Text(RecLocalizations.of(context).news),
            onTap: () => _onListTileTap(context),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.account_balance),
            title: Text(RecLocalizations.of(context).houseRecomm),
            onTap: () => _onListTileTap(context),
          ),
          ListTile(
            leading: Icon(Icons.business),
            title: Text(RecLocalizations.of(context).condoUCRecomm),
            onTap: () => _onListTileTap(context),
          ),
          ListTile(
            leading: Icon(Icons.account_balance),
            title: Text(RecLocalizations.of(context).newHouseRecomm),
            onTap: () => _onListTileTap(context),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.local_mall),
            title: Text(RecLocalizations.of(context).company),
            onTap: () => _onListTileTap(context),
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text(RecLocalizations.of(context).team),
            onTap: () => _onListTileTap(context),
          ),
          ListTile(
            leading: Icon(Icons.perm_identity),
            title: Text(RecLocalizations.of(context).agent),
            onTap: () => _onListTileTap(context),
          ),
          Divider(),
          ListTile(
            leading: new Icon(Icons.thumb_up),
            title: new Text(RecLocalizations.of(context).recFeature),
            onTap: () => _onListTileTap(context),
          ),
          ListTile(
            leading: Icon(Icons.library_books),
            title: Text(RecLocalizations.of(context).magazine),
            onTap: () => _onListTileTap(context),
          ),
          Divider(),
          new ListTile(
            leading: new Icon(Icons.settings),
            title: new Text('Settings'),
            onTap: () => _onListTileTap(context),
          ),
          new ListTile(
            leading: new Icon(Icons.help),
            title: new Text('Help & feedback'),
            onTap: () => _onListTileTap(context),
          )
    ]));

    return Scaffold(
        body: new Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: new Container(
            child: CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  title: new Text(RecLocalizations.of(context).title),
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
                      padding: new EdgeInsets.all(10.0),
                      child: ForSale(),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
        drawer: drawer);
  }

  _onListTileTap(BuildContext context) {
    Navigator.of(context).pop();
    showDialog<Null>(
      context: context,
      child: new AlertDialog(
        title: const Text('Not Implemented'),
        actions: <Widget>[
          new FlatButton(
            child: const Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
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
