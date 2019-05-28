import 'package:flutter/material.dart';
import 'package:real_estate_circle/localizations.dart';
import 'package:real_estate_circle/widgets/grid_list_img_clip.dart';

class RealEstateNews extends StatelessWidget {
  var imgs = ['https://58realty.so.house/media/portfolio/expert-1.jpg?&width=115&height=90&rmode=stretch',
    'https://58realty.so.house/media/portfolio/expert-1.jpg?&width=115&height=90&rmode=stretch',
    'https://58realty.so.house/media/portfolio/expert-1.jpg?&width=115&height=90&rmode=stretch',
    'https://58realty.so.house/media/portfolio/expert-1.jpg?&width=115&height=90&rmode=stretch',
    'https://58realty.so.house/media/portfolio/expert-1.jpg?&width=115&height=90&rmode=stretch'];
  var descs = ['【专家谈房】所有的卖家可能都要问自己一个问题，我的房子应当如何卖 ...',
    '【专家谈房】所有的卖家可能都要问自己一个问题，我的房子应当如何卖 ...',
    '【专家谈房】所有的卖家可能都要问自己一个问题，我的房子应当如何卖 ...',
    '【专家谈房】所有的卖家可能都要问自己一个问题，我的房子应当如何卖 ...',
    '【专家谈房】所有的卖家可能都要问自己一个问题，我的房子应当如何卖 ...'];

  @override
  Widget build(BuildContext context) {
    int numberOfColumns = MediaQuery.of(context).orientation == Orientation.landscape ? 2 : 1;
    Widget listSection = Flexible(
        fit: FlexFit.loose,
        flex: 0,
        child:
        GridView.count(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: numberOfColumns,
            childAspectRatio: 3.0,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            children: _generateGridItems(context, this.imgs, this.descs)
        )
            );

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
                  RecLocalizations.of(context).reNews,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              listSection,
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

List<Container> _generateGridItems(BuildContext context, imgs, descs) {
  int imgColumn = MediaQuery.of(context).orientation == Orientation.landscape ? 3 : 3;
  int descColumn = MediaQuery.of(context).orientation == Orientation.landscape ? 4 : 5;
  List<Container> gridItems = new List();
  for (int i = 0; i < 5; i++) {
    gridItems.add(Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            Expanded(
                flex: imgColumn,
                child: GridListImgClip(
                    imgs[i])),
            Expanded(
                flex:descColumn,
                child: Container(
                    margin: EdgeInsets.only(right: 20.0),
                    child:
                    Text(descs[i])))
          ],
        )));
  }
  return gridItems;
}
