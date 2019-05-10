import 'package:flutter/material.dart';

class ForSale extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget gridSection = new Flexible(
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

    return Center(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                'House for sale',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'from agent and company',
                style: TextStyle(fontSize: 15, color: Colors.redAccent),
              ),
            ),
            SizedBox(height: 5),
            gridSection,

          ],
        ),
      ),
    );
  }
}

List<Container> _generateGridItems() {
  List<Container> gridItems = new List();
  for (int i = 0; i < 8; i++) {
    gridItems.add(new Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        imageExpanded('https://58realty.so.house/media/Res/W4371817/W4371817-1.jpg?&width=400&height=300&rmode=stretch'),
        Text('\$2,000,000'),
        Text('391 Sandhurst Dr, Oakville')
      ],
    )));
  }
  return gridItems;
}

Expanded imageExpanded(String img) {
  return new Expanded(child: Container(
      margin: const EdgeInsets.all(20.0),
    child: new ClipRRect(
      borderRadius: new BorderRadius.circular(15.0),
      child: new Image.network(img),
    )
  ));
}
