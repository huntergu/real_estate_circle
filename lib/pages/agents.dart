import 'package:flutter/material.dart';
import 'package:real_estate_circle/localizations.dart';
import 'package:real_estate_circle/pages/grid_list_ca_img.dart';
import 'package:real_estate_circle/pages/grid_list_img.dart';

class Agents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget gridSection = Flexible(
        fit: FlexFit.loose,
      flex: 0,
      child:
      GridView.count(
          physics: ScrollPhysics(),
          shrinkWrap: true,
        crossAxisCount: 3,
        childAspectRatio: 0.5,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: _generateGridItems()
    ));

    return Container(
      child: Center(
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              Center(
                child: Text(
                  RecLocalizations.of(context).agent,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: Text(
                  RecLocalizations.of(context).agentDesc,
                  style: TextStyle(fontSize: 15, color: Colors.black38),
                ),
              ),
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

List<Container> _generateGridItems() {
  List<Container> gridItems = new List();
  for (int i = 0; i < 6; i++) {
    gridItems.add(Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
            child: GridListCircleAvatarImg('https://58realty.so.house/media/agency/jeff-photo-400.jpg')),
        Container(
            margin: EdgeInsets.only(top: 10, left: 5, right: 5),
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Flexible(
              fit: FlexFit.loose,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('Jeff Zhao', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), textAlign: TextAlign.center,)
                ],
              ),
            )
          ],
        )),
        Container(
            margin: EdgeInsets.only(top: 10, left: 5, right: 5),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Flexible(
                  fit: FlexFit.loose,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text('资深地产投资专家', textAlign: TextAlign.center,)
                    ],
                  ),
                )
              ],
            ))
        ,

      ],
    )));
  }
  return gridItems;
}