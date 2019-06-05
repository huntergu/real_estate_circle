import 'package:flutter/material.dart';
import 'package:real_estate_circle/localizations.dart';
import 'package:real_estate_circle/pages/house_recomm_detail.dart';
import 'package:real_estate_circle/widgets/grid_list_img.dart';
import 'package:real_estate_circle/utils/money_format.dart';

class HouseRecomm extends StatelessWidget {
  static const routeName = '/house';

  List imgs = ['https://58realty.so.house/media/Res/W4371817/W4371817-1.jpg?&width=400&height=300&rmode=stretch',
    'https://58realty.so.house/media/Condo/C4358459/C4358459-1.jpg?&width=400&height=300&rmode=stretch',
    'https://58realty.so.house/media/Commercial/C4381500/C4381500-2.jpg?&width=400&height=300&rmode=stretch',
    'https://58realty.so.house/media/Res/E4374528/E4374528-1.jpg?&width=400&height=300&rmode=stretch',
    'https://58realty.so.house/media/Res/W4389513/W4389513-1.jpg?&width=400&height=300&rmode=stretch',
    'https://58realty.so.house/media/Commercial/N4333494/N4333494-1.jpg?&width=400&height=300&rmode=stretch'];
  List prices = [2999000.0,619800.0,1500000.0,1375000.0,02299000.0,1150000.0];
  List addresses = ['391 Sandhurst Dr , Oakville','88 Harbour St , Toronto','1173 Davenport Rd , Toronto','1627 Acorn Lane , Pickering','16 Ashwood Cres , Toronto','50 Bur Oak Ave , Markham'];
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
        mainAxisSpacing: 0.0,
        crossAxisSpacing: 0.0,
        children: _generateGridItems(context, this.imgs, this.prices, this.addresses)
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

List<GestureDetector> _generateGridItems(BuildContext context, List imgs, List prices, List addresses) {
  List<GestureDetector> gridItems = new List();
  for (int i = 0; i < imgs.length; i++) {
    gridItems.add(
      GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, HouseRecommDetail.routeName, arguments: i.toString());
        },
        child: Container(
            margin: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                GridListImg(imgs[i]),
                SizedBox(height: 10.0),
                Text(MoneyFormat.formatMoney(prices[i], 0), style: TextStyle(fontSize: 20, color: Colors.purple, fontWeight: FontWeight.bold),),
                SizedBox(height: 10.0),
                Flexible(
                    fit: FlexFit.loose,
                    child: Text(
                      addresses[i],
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    )),
              ],
            )),
      )
        );
  }
  return gridItems;
}