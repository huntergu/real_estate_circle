import 'package:flutter/material.dart';
import 'package:real_estate_circle/localizations.dart';
import 'package:real_estate_circle/widgets/grid_list_img.dart';

class NewHouseRecomm extends StatelessWidget {
  static const routeName = '/newhouse';

  List imgs = ['https://58realty.so.house/media/NewHouse/THE%20HUMMOCK/hummock1.jpg?&width=400&height=300&rmode=stretch',
    'https://58realty.so.house/media/NewHouse/THE%20ASCENT/ascent1.jpg?&width=400&height=300&rmode=stretch',
    'https://58realty.so.house/media/NewHouse/THE%20HILLOCK/THE-HILLOCK-1.jpg?&width=400&height=300&rmode=stretch',
    'https://58realty.so.house/media/NewHouse/THE%20DRUMLIN/Drumlin-1.jpg?&width=400&height=300&rmode=stretch',
    'https://58realty.so.house/media/NewHouse/THE%20PROMINENCE/THE-PROMINENCE-1.jpg?&width=400&height=300&rmode=stretch',
    'https://58realty.so.house/media/NewHouse/THE%20HILLSIDE/THE-HILLSIDE-1.jpg?&width=400&height=300&rmode=stretch'];
  List addresses = ['Jefferson Homes Wickerson Hills , London','Wickerson Hills , London','Jefferson Homes Wickerson Hills , London',
  'Wickerson Hills , London','Wickerson Hills , London','Wickerson Hills , London'];

  @override
  Widget build(BuildContext context) {
    int numberOfColumns = MediaQuery.of(context).orientation == Orientation.landscape ? 3 : 2;
    double aspectRatio =
    MediaQuery.of(context).orientation == Orientation.landscape ? 0.7 : 0.7;

    Widget gridSection = Flexible(
        fit: FlexFit.loose,
      flex: 0,
      child:
      GridView.count(
          physics: ScrollPhysics(),
          shrinkWrap: true,
        crossAxisCount: numberOfColumns,
        childAspectRatio: aspectRatio,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: _generateGridItems(this.imgs, this.addresses)
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
                  RecLocalizations.of(context).newHouseRecomm,
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

List<Container> _generateGridItems(List imgs, List addresses) {
  List<Container> gridItems = new List();
  for (int i = 0; i < imgs.length; i++) {
    gridItems.add(Container(
        margin: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        GridListImg(imgs[i]),
        SizedBox(height: 10.0),
        Flexible(
            fit: FlexFit.loose,
            child: Text(
              addresses[i],
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )),
      ],
    )));
  }
  return gridItems;
}

