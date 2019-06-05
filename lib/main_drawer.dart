import 'package:flutter/material.dart';
import 'package:real_estate_circle/localizations.dart';
import 'package:real_estate_circle/main.dart';
import 'package:real_estate_circle/pages/agents.dart';
import 'package:real_estate_circle/pages/companies.dart';
import 'package:real_estate_circle/pages/house_recomm.dart';
import 'package:real_estate_circle/pages/magazin.dart';
import 'package:real_estate_circle/pages/new_condo_recomm.dart';
import 'package:real_estate_circle/pages/new_house_recomm.dart';
import 'package:real_estate_circle/pages/real_estate_news.dart';
import 'package:real_estate_circle/pages/rec_feature.dart';
import 'package:real_estate_circle/pages/teams.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: const Text('User Name'),
            accountEmail: const Text('user@example.com'),
            currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.brown, child: Text('UN')),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(RecLocalizations.of(context).homePage),
            onTap: () => _onListTileTap(context, RealEstateCircleApp.routeName),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.chrome_reader_mode),
            title: Text(RecLocalizations.of(context).news),
            onTap: () => _onListTileTap(context, RealEstateNews.routeName),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.account_balance),
            title: Text(RecLocalizations.of(context).houseRecomm),
            onTap: () => _onListTileTap(context, HouseRecomm.routeName),
          ),
          ListTile(
            leading: Icon(Icons.business),
            title: Text(RecLocalizations.of(context).condoUCRecomm),
            onTap: () => _onListTileTap(context, NewCondoRecomm.routeName),
          ),
          ListTile(
            leading: Icon(Icons.account_balance),
            title: Text(RecLocalizations.of(context).newHouseRecomm),
            onTap: () => _onListTileTap(context, NewHouseRecomm.routeName),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.local_mall),
            title: Text(RecLocalizations.of(context).company),
            onTap: () => _onListTileTap(context, Companies.routeName),
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text(RecLocalizations.of(context).team),
            onTap: () => _onListTileTap(context, Teams.routeName),
          ),
          ListTile(
            leading: Icon(Icons.perm_identity),
            title: Text(RecLocalizations.of(context).agent),
            onTap: () => _onListTileTap(context, Agents.routeName),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.thumb_up),
            title: Text(RecLocalizations.of(context).recFeature),
            onTap: () => _onListTileTap(context, RecFeatures.routeName),
          ),
          ListTile(
            leading: Icon(Icons.library_books),
            title: Text(RecLocalizations.of(context).magazine),
            onTap: () => _onListTileTap(context, Magazine.routeName),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => _onListTileTap(context, Settings.routeName),
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help & feedback'),
            onTap: () => _onListTileTap(context, Helps.routeName),
          )
        ]));
  }

  _onListTileTap(BuildContext context, String routeName) {
    Navigator.pushNamed(context, routeName);
  }

}
