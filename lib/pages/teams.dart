import 'package:flutter/material.dart';
import 'package:real_estate_circle/localizations.dart';

class Teams extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double fs = MediaQuery.of(context).orientation == Orientation.landscape ? 30 : 20;

    Widget listSection = Flexible(
        fit: FlexFit.loose,
        flex: 0,
        child: ListView.separated(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context, i) => Container(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Image.network(
                                'https://58realty.so.house/media/realtyTeam/nustream.jpg', fit: BoxFit.fitWidth)),
                    SizedBox(height: 16.0),
                    Text('新趋势地产专业团队', style: TextStyle(fontWeight: FontWeight.bold, fontSize: fs))
                  ],
                )),
            separatorBuilder: (context, i) => SizedBox(height: 40.0)));

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
                  RecLocalizations.of(context).team,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(height: 20.0),
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
