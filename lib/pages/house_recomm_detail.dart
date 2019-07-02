import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_circle/pages/hrd/hrd_detail.dart';

import 'hrd/hrd_gallery.dart';

class HouseRecommDetail extends StatefulWidget {
  static const routeName = '/housedetail';
  final String id;

  HouseRecommDetail({Key key, @required this.id}) : super(key: key);

  @override
  _HouseRecommDetailState createState() => _HouseRecommDetailState();
}

class _HouseRecommDetailState extends State<HouseRecommDetail>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  ScrollController _scrollViewController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    _scrollViewController = ScrollController(initialScrollOffset: 0.0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollViewController.dispose();
    super.dispose();
  }

  List imgs = [
    'https://58realty.so.house/media/Res/W4371817/W4371817-1.jpg',
    'https://58realty.so.house/media/Res/W4371817/W4371817-2.jpg',
    'https://58realty.so.house/media/Res/W4371817/W4371817-3.jpg',
/*
    'https://58realty.so.house/media/Res/W4371817/W4371817-4.jpg',
    'https://58realty.so.house/media/Res/W4371817/W4371817-5.jpg',
    'https://58realty.so.house/media/Res/W4371817/W4371817-6.jpg',
    'https://58realty.so.house/media/Res/W4371817/W4371817-7.jpg',
    'https://58realty.so.house/media/Res/W4371817/W4371817-8.jpg',
    'https://58realty.so.house/media/Res/W4371817/W4371817-9.jpg',
    'https://58realty.so.house/media/Res/W4371817/W4371817-10.jpg',
    'https://58realty.so.house/media/Res/W4371817/W4371817-11.jpg',
    'https://58realty.so.house/media/Res/W4371817/W4371817-12.jpg',
    'https://58realty.so.house/media/Res/W4371817/W4371817-13.jpg',
    'https://58realty.so.house/media/Res/W4371817/W4371817-14.jpg',
    'https://58realty.so.house/media/Res/W4371817/W4371817-15.jpg',
    'https://58realty.so.house/media/Res/W4371817/W4371817-16.jpg',
    'https://58realty.so.house/media/Res/W4371817/W4371817-17.jpg',
    'https://58realty.so.house/media/Res/W4371817/W4371817-18.jpg',
    'https://58realty.so.house/media/Res/W4371817/W4371817-19.jpg',
    'https://58realty.so.house/media/Res/W4371817/W4371817-20.jpg',
*/
  ];

  // position 2 = format: 0 = currency, 1 = number, 2 = integer, 999 = link,

  List<List<String>> features = [
    ['Washrooms', '6'],
    ['Bedrooms','4'],
    ['Basement','Fin W/O'],
    ['CentralVac','Y'],
    ['Lot Depth','147.08', '1'],
    ['Lot Front','75', '2'],
    ['Days On Market','42', '2'],
    ['Heat Source','Gas'],
    ['Garage Spaces',''],
    ['Garage Type','Attached'],
    ['Dinning Room','Coffered Ceiling'],
    ['Living Room','Gas Fireplace, 3.56 x 3.89'],
    ['Approx Square Footage', ''],
    ['Taxes','4856', '0'],
    ['Type','Detached'],
    ['Community',''],
    ['Air Conditioning','Central Air'],
    ['Vitual Tour','Click to virtual tour site','999', 'http://www.google.com'],
  ];

  String description = "***Stunning Custom Built Home Situated On A Very Prime Lot; Walking Distance To Appleby College; Bright & Spacious Living Space; Walnut Custom Cabinetry& Mill Work;Plaster Mouldings,High Ceilings, Full Walnut Pallening Staircase, Glass Railings, Gourmet Kitchen,Natural Stone Fireplace, Theater Room, Wine Room, Steam Shower, Master Bathroom Heated Floor.Exercise Room Easy Acc To All Major Highways, Downtown Oakville&Pearson.";
//  String address = "391 Sandhurst Dr, Oakville L6L4L1";
  String address = "391 Sandhurst Dr";
  String price = "2990000";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        controller: _scrollViewController,
        headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
          return <Widget>[
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
                    textAlign: TextAlign.left,
                  ),
                  titlePadding:
                      EdgeInsetsDirectional.only(start: 20, bottom: 100),
                  background: Image.network(
                    'https://58realty.so.house/media/Res/W4371817/W4371817-1.jpg',
                    fit: BoxFit.cover,
                  )),
              bottom: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BubbleTabIndicator(
                    indicatorHeight: 35.0,
                    indicatorColor: Colors.purple,
                    tabBarIndicatorSize: TabBarIndicatorSize.tab),
                tabs: <Widget>[
                  Tab(
                    child: Text('Gallery', style: TextStyle(fontSize: 20),),
                  ),
                  Tab(
                    child: Text('Detail', style: TextStyle(fontSize: 20),),
                  )
                ],
                controller: _tabController,
              ),
            ),
          ];
        },
        body: TabBarView(
          children: <Widget>[
            HouseGallery(this.imgs, this.address, this.price),
            HouseDetail(this.features, this.description, this.address, this.price),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}