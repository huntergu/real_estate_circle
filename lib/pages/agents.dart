import 'package:flutter/material.dart';
import 'package:real_estate_circle/localizations.dart';
import 'package:real_estate_circle/widgets/grid_list_ca_img.dart';
import 'package:real_estate_circle/widgets/grid_list_img.dart';

class Agents extends StatelessWidget {
  static const routeName = '/agent';

  List imgs = ['https://58realty.so.house/media/agency/joe-300.jpg',
    'https://58realty.so.house/media/agency/Ronald-huang-new-400.jpg',
    'https://58realty.so.house/media/agency/michael-wang-photo-300.jpg',
    'https://58realty.so.house/media/agency/jeff-photo-400.jpg',
    'https://58realty.so.house/media/agency/ting-photo-new.jpg',
    'https://58realty.so.house/media/agency/jessica-photo2.jpg'];
  List names = ['Joe Wang','Ronald Huang','Michael Wang',
    'Jeff Zhao','TING','Jessica Shen'];
  List tags = ['精做西部地产','大多区资深地产经纪','地产经纪',
    '资深地产投资专家','地产经纪 (巴里 Barrie 地区)','伦敦地产 London'];
  @override
  Widget build(BuildContext context) {
    double aspectRatio =
        MediaQuery.of(context).orientation == Orientation.landscape ? 0.7 : 0.5;

    Widget gridSection = Flexible(
        fit: FlexFit.loose,
        flex: 0,
        child: GridView.count(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 3,
            childAspectRatio: aspectRatio,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            children: _generateGridItems(this.imgs, this.names, this.tags)));

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

List<Container> _generateGridItems(List imgs, List names, List tags) {
  List<Container> gridItems = new List();
  for (int i = 0; i < imgs.length; i++) {
    gridItems.add(Container(
        margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                child: GridListCircleAvatarImg(
                    imgs[i])),
            Flexible(
                fit: FlexFit.loose,
                child: Text(
                  names[i],
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )),
            SizedBox(height: 10,),
            Flexible(
                fit: FlexFit.loose,
                child: Text(
                  tags[i],
                  textAlign: TextAlign.center,
                ))
          ],
        )));
  }
  return gridItems;
}
