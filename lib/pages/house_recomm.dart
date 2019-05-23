import 'package:flutter/material.dart';
import 'package:real_estate_circle/localizations.dart';
import 'package:real_estate_circle/pages/grid_list_img.dart';

class HouseRecomm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget gridSection = Flexible(
        fit: FlexFit.loose,
      flex: 0,
      child:
      GridView.count(
          physics: ScrollPhysics(),
          shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 1.0,
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
                  RecLocalizations.of(context).houseRecommTitle,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: Text(
                  '(' + RecLocalizations.of(context).recommFrom + ')',
                  style: TextStyle(fontSize: 15, color: Colors.redAccent),
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
        GridListImg('https://58realty.so.house/media/Res/W4371817/W4371817-1.jpg?&width=400&height=300&rmode=stretch'),
        Text('\$2,000,000'),
        Text('391 Sandhurst Dr'),
        Text('Oakville')
      ],
    )));
  }
  return gridItems;
}