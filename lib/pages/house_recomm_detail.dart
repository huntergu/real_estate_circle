import 'package:flutter/material.dart';
import 'package:real_estate_circle/localizations.dart';
import 'package:real_estate_circle/widgets/grid_list_img.dart';
import 'package:real_estate_circle/utils/money_format.dart';

class HouseRecommDetail extends StatelessWidget {
  static const routeName = '/housedetail';
  final String id;

  HouseRecommDetail({Key key, @required this.id}) : super(key: key);

  List imgs = [
  ];
  List addresses = [
  ];

  @override
  Widget build(BuildContext context) {
    int numberOfColumns =
        MediaQuery.of(context).orientation == Orientation.landscape ? 3 : 2;
    double aspectRatio =
        MediaQuery.of(context).orientation == Orientation.landscape ? 0.7 : 0.7;

    Widget gridSection = Flexible(
        fit: FlexFit.loose,
        flex: 0,
        child: GridView.count(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: numberOfColumns,
            childAspectRatio: aspectRatio,
            mainAxisSpacing: 0.0,
            crossAxisSpacing: 0.0,
            children: _generateGridItems(
                context, this.imgs, this.addresses)));

    return Scaffold(
      body: Center(
        child: Container(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                title: Text('DETAIL'),
                pinned: true,
                expandedHeight: 250.0,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: false,
                    title: Text(
                        '391 Sandhurst Dr \r\nOakville L6L4L1',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            ),
                    textAlign: TextAlign.left,),
                    titlePadding: EdgeInsetsDirectional.only(start: 20, bottom: 100),
                    background: Image.network(
                      'https://58realty.so.house/media/Res/W4371817/W4371817-1.jpg',
                      fit: BoxFit.cover,
                    )),
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Text(''),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<GestureDetector> _generateGridItems(
    BuildContext context, List imgs, List addresses) {
  List<GestureDetector> gridItems = new List();
  for (int i = 0; i < imgs.length; i++) {
    gridItems.add(GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/');
      },
      child: Container(
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
          )),
    ));
  }
  return gridItems;
}
