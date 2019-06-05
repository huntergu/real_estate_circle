import 'package:flutter/material.dart';
import 'package:real_estate_circle/localizations.dart';
import 'package:real_estate_circle/widgets/grid_list_img_clip.dart';
import 'package:real_estate_circle/utils/string_format.dart';

class RealEstateNews extends StatelessWidget {
  static const routeName = '/news';

  List imgs = ['https://58realty.so.house/media/portfolio/%E5%B8%82%E5%9C%BA%E5%8A%A8%E6%80%81.jpg?&width=115&height=90&rmode=stretch',
    'https://58realty.so.house/media/portfolio/expert-1.jpg?&width=115&height=90&rmode=stretch',
    'https://58realty.so.house/media/portfolio/new4.PNG?&width=115&height=90&rmode=stretch',
    'https://58realty.so.house/media/News/DPH%20(1).png?&width=115&height=90&rmode=stretch',
    'https://58realty.so.house/media/portfolio/flipping-1.jpg?&width=115&height=90&rmode=stretch',
  'https://58realty.so.house/media/portfolio/new-5.PNG?&width=115&height=90&rmode=stretch'];
  List descs = ['【地产市场】GTA地区高层建筑的土地购买价格是多少？土地成本占出售收入的比例有多大？最新High Rise Land Inside Report告诉您细节',
    '【专家谈房】所有的卖家可能都要问自己一个问题，我的房子应当如何卖？谁会来买？我周围挂牌的房产同我的相比有何优缺点？',
    '【最新视频】房屋加建/翻建过程中的问题浅谈，  Z Square 建筑设计事务所 创始人甄梦頔从自己从业设计房屋、开发项目的角度谈房屋改建修建的问题',
    '【地产市场】仅挂牌一天！多伦多独立屋抢高\$30万，\$150万瞬间售出！这栋位于little Italy的独立屋仅仅上市一天，就比售价\$118.9万高出31万的价格售出',
    '【视频访谈】张夏景谈屋翻建改建， 后巷屋的建设现状和未来发展。 专业的人谈专业的事情',
  '【专家谈房】杨洪谈购买楼花， 楼花购买当中，会遇到各种不同的陷进和风险， 如何规避，如何掌控， 听听经验人的说法'];

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

List<Container> _generateGridItems(BuildContext context, List imgs, List descs) {
  int imgColumn = MediaQuery.of(context).orientation == Orientation.landscape ? 3 : 3;
  int descColumn = MediaQuery.of(context).orientation == Orientation.landscape ? 4 : 5;
  List<Container> gridItems = new List();
  for (int i = 0; i < imgs.length; i++) {
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
                    Text(StringFormat.maxLength(descs[i], 32))))
          ],
        )));
  }
  return gridItems;
}
