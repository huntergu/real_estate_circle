import 'package:flutter/material.dart';
import 'package:real_estate_circle/localizations.dart';

class Teams extends StatelessWidget {
  static const routeName = 'team';

  List imgs = ['https://58realty.so.house/media/realtyTeam/nustream.jpg',
    'https://58realty.so.house/media/realtyTeam/victoria-banner-600.jpg',
    'https://58realty.so.house/media/realtyTeam/Michelle-Peng600.jpg',
    'https://58realty.so.house/media/realtyTeam/one-team-banner9.jpg',
  ];
  List names = ['新趋势地产专业团队','Victoria 售房团队','ActionTeam 行动组',
    'The One Team 团队'];

  @override
  Widget build(BuildContext context) {
    double aspectRatio =
    MediaQuery.of(context).orientation == Orientation.landscape ? 1.2 : 1.2;
    double fs = MediaQuery.of(context).orientation == Orientation.landscape ? 15 : 20;
    int numberOfColumn = MediaQuery.of(context).orientation == Orientation.landscape ? 3 : 1;

    Widget gridSection = Flexible(
        fit: FlexFit.loose,
        flex: 0,
        child: GridView.count(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: numberOfColumn,
            childAspectRatio: aspectRatio,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            children: _generateGridItems(this.imgs, this.names, fs)));

    return Container(
      child: Center(
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              Center(
                child: Text(
                  RecLocalizations.of(context).team,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(height: 20.0),
              gridSection,
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.blueGrey,
          blurRadius: 10.0,
        ),
      ]),
    );
  }
}

List<Container> _generateGridItems(List imgs, List names, double fs) {
  List<Container> gridItems = new List();
  for (int i = 0; i < imgs.length; i++) {
    gridItems.add(Container(
        margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Image.network(
                    imgs[i], fit: BoxFit.fitWidth)),
            SizedBox(height: 16.0),
            Text(names[i], style: TextStyle(fontWeight: FontWeight.bold, fontSize: fs))
          ],
        )));
  }
  return gridItems;
}

