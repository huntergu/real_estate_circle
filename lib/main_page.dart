import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:real_estate_circle/localizations.dart';
import 'package:real_estate_circle/main_drawer.dart';

class MainPage extends StatelessWidget {
  Widget page;

  MainPage(Widget page) {
    this.page = page;
  }
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
                        'https://58realty.so.house/media/background/dichanquan-banner4.jpg',
                        fit: BoxFit.cover,
                      )),
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: page,
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
