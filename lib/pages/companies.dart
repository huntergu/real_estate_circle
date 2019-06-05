import 'package:flutter/material.dart';
import 'package:real_estate_circle/localizations.dart';
import 'package:real_estate_circle/widgets/grid_list_ca_img.dart';
import 'package:real_estate_circle/widgets/grid_list_img.dart';
import 'package:real_estate_circle/widgets/grid_list_img_clip.dart';

class Companies extends StatelessWidget {
  static const routeName = '/company';

  List imgs = ['https://58realty.so.house/media/about/nu.jpg?&width=128&height=128&rmode=stretch',
    'https://58realty.so.house/media/about/landmark-logo.png?&width=128&height=128&rmode=stretch',
    'https://58realty.so.house/media/about/baystreet-logo.png?&width=128&height=128&rmode=stretch',
    'https://58realty.so.house/media/about/vc-logo.png?&width=128&height=128&rmode=stretch',
    'https://58realty.so.house/media/about/dreamhome-logo.png?&width=128&height=128&rmode=stretch',
    'https://58realty.so.house/media/about/peaceland-logo.png?&width=128&height=128&rmode=stretch'];
  List names = ['新趋势地产','大鹏地产','金融街地产',
    'VC 地产','枫叶地产','君安地产'];
  List tags = ['让天下没有难卖的房！','HomeLife Landmark Realty Inc.','','为每一位有真正需要的客人提供优质服务 ...','','君安地产'];

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
                  RecLocalizations.of(context).company,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: Text(
                  RecLocalizations.of(context).companyDesc,
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
                child: GridListImgClip(
                    imgs[i])),
        Text(
          names[i],
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
            SizedBox(height: 5,),
            Flexible(
                fit: FlexFit.loose,
                child: Text(
                  tags[i],
                  style: TextStyle(fontSize: 16, color: Colors.black45),
                  textAlign: TextAlign.center,

                )),
            Text('Read More', style: TextStyle(color: Colors.purple),)
          ],
        )));
  }
  return gridItems;
}
