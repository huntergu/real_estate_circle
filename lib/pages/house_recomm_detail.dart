import 'package:flutter/material.dart';
import 'package:real_estate_circle/localizations.dart';
import 'package:real_estate_circle/widgets/grid_list_img.dart';
import 'package:real_estate_circle/utils/money_format.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';

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
  ];

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
                    textAlign: TextAlign.left,),
                  titlePadding: EdgeInsetsDirectional.only(start: 20, bottom: 100),
                  background: Image.network(
                    'https://58realty.so.house/media/Res/W4371817/W4371817-1.jpg',
                    fit: BoxFit.fitHeight,
                  )),
              bottom: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BubbleTabIndicator(
                    indicatorHeight: 25.0,
                    indicatorColor: Colors.purple,
                    tabBarIndicatorSize: TabBarIndicatorSize.tab
                ),
                tabs: <Widget>[
                  Tab(text: 'Gallery',),
                  Tab(text: 'Detail',)
                ],
                controller: _tabController,
              ),
            ),
          ];
        },
        body: TabBarView(
          children: <Widget>[
            HouseGallery(this.imgs),
            PageTwo(),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.network(
              'https://58realty.so.house/media/Res/W4371817/W4371817-1.jpg',
              fit: BoxFit.fitWidth),
          Image.network(
              'https://58realty.so.house/media/Res/W4371817/W4371817-2.jpg',
              fit: BoxFit.fitWidth),
          Image.network(
              'https://58realty.so.house/media/Res/W4371817/W4371817-3.jpg',
              fit: BoxFit.fitWidth),
        ],
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  List imgs;
  PageOne(List imgs) {
    this.imgs = imgs;
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.imgs.length,
      itemExtent: 250.0,
      itemBuilder: (context, index) => Container(
            padding: EdgeInsets.all(10.0),
            child: Container(
                margin: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Image.network(this.imgs[index], fit: BoxFit.fitWidth)),
          ),
    );
  }
}
