import 'package:flutter/material.dart';
import 'package:real_estate_circle/localizations.dart';

class RealEstateNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget listSection = Flexible(
        fit: FlexFit.loose,
        flex: 0,
        child: ListView.separated(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, i) => Container(
                    child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(left: 20.0, right: 20.0),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.network(
                                'https://58realty.so.house/media/portfolio/expert-1.jpg?&width=115&height=90&rmode=stretch'))),
                    Expanded(
                        child: Container(
                            margin: EdgeInsets.only(right: 20.0),
                            child:
                                Text('【专家谈房】所有的卖家可能都要问自己一个问题，我的房子应当如何卖 ...')))
                  ],
                )),
            separatorBuilder: (context, i) => SizedBox(height: 20.0)));

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
