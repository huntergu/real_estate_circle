import 'package:flutter/material.dart';
import 'package:real_estate_circle/localizations.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
