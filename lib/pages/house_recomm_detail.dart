import 'package:flutter/material.dart';
import 'package:real_estate_circle/localizations.dart';
import 'package:real_estate_circle/widgets/grid_list_img.dart';
import 'package:real_estate_circle/utils/money_format.dart';

class HouseRecommDetail extends StatefulWidget {
  static const routeName = '/housedetail';
  final String id;

  HouseRecommDetail({Key key, @required this.id}) : super(key: key);

  @override
  _HouseRecommDetailState createState() => _HouseRecommDetailState();
}

class _HouseRecommDetailState extends State<HouseRecommDetail> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 2,
      vsync: this,
    );
  }

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
                        '\r\n\r\n391 Sandhurst Dr \r\nOakville L6L4L1',
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
                bottom: TabBar(
                  tabs: <Widget>[
                    Tab(text: 'Gallery',),
                    Tab(text: 'Detail',)
                  ],
                  controller: controller,
                ),
              ),
              SliverFillRemaining(
                child: TabBarView(
                  controller: controller,
                  children: <Widget>[
                    Center(child: Text('Gallery'),),
                    Center(child: Text('Detail'),),
                  ],
                )
              )

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
