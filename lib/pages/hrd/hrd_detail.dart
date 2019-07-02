import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:real_estate_circle/utils/string_format.dart';
import 'package:real_estate_circle/utils/utils.dart';
import 'package:real_estate_circle/widgets/google_map_address.dart';

class HouseDetail extends StatelessWidget {
  String address;
  String price;
  List<List<String>> features;
  String description;
  HouseDetail(List<List<String>> features, String description, String address,
      String price) {
    this.features = features;
    this.description = description;
    this.address = address;
    this.price = price;
  }

  @override
  Widget build(BuildContext context) {
    List<String> values = [this.address, this.price];

    Widget listSection = Flexible(
        fit: FlexFit.loose,
        flex: 0,
        child: ListView.builder(
          physics: ScrollPhysics(),
          shrinkWrap: true,
          itemCount: features.length,
          itemBuilder: (BuildContext context, int index) {
            List<String> v = features[index];

            Color color = index.isEven ? Colors.blueGrey[50] : Colors.white;
            String label = v[0];
            String desc = v[1];
            Widget textDesc = Text(desc, style: TextStyle(fontSize: 20),);
            if (v.length > 2) {
              try {
                int x = int.parse(v[2]);
                desc = StringFormat.generateLabel(v[1], x);
                if (x == 999) {
                  textDesc = InkWell(
                    child: Text(desc, style: TextStyle(fontSize: 20),),
                    onTap: Utils.launchURL(v[3]),
                  );
                }

              } catch (e) {
              }
            }
            return Container(
              padding: EdgeInsets.all(10),
              color: color,
                child: Row(
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Container(
                      child: Text(label, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      child: textDesc,
                    )),
              ],
            ));
          },
        ));

    return ListView(children: <Widget>[
      Center(
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Column(
            children: <Widget>[
              SizedBox(height: 40.0),
              Container(
                padding: EdgeInsets.all(5),
                child: Text(
                  this.description,
                  style: TextStyle(
                      fontSize: 20, height: 1.5, color: Colors.black45),
                ),
              ),
              SizedBox(height: 20.0),
              listSection,
              SizedBox(height: 40.0),
            ],
          ),
        ),
      ),
      GoogleMapAddress(values, new LatLng(0, 0))
    ]);
  }
}