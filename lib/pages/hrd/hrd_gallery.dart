import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:real_estate_circle/utils/number_format.dart';
import 'package:real_estate_circle/widgets/google_map_address.dart';
import 'package:real_estate_circle/widgets/grid_list_img.dart';

class HouseGallery extends StatelessWidget {
  List imgs;
  String address;
  String price;
  HouseGallery(List imgs, String address, String price) {
    this.imgs = imgs;
    this.address = address;
    this.price = price;
  }

  @override
  Widget build(BuildContext context) {
    double aspectRatio =
    MediaQuery.of(context).orientation == Orientation.landscape ? 1.5 : 1.5;
    double fs = MediaQuery.of(context).orientation == Orientation.landscape ? 15 : 20;
    int numberOfColumn = MediaQuery.of(context).orientation == Orientation.landscape ? 3 : 1;
    List<String> values = [this.address, this.price];
    Widget gridSection = Flexible(
        fit: FlexFit.loose,
        flex: 0,
        child: GridView.count(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: numberOfColumn,
            childAspectRatio: aspectRatio,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            children: _generateGridItems(this.imgs, fs)));

    return ListView(
      children: <Widget> [
        Center(
        child: Card(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Column(
            children: <Widget>[
              SizedBox(height: 40.0),
              Center(
                child: Text(
                  "Listing Price: " +  NumberFormatter.formatMoney(2999000, 0),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.purple),
                ),
              ),
              SizedBox(height: 20.0),
              Center(
                child: Text(
                  "MLS# W4371817",
                  style: TextStyle(fontSize: 20, color: Colors.black38),
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(

                  child: Text(
                    "Brokerage: HOMELIFE LANDMARK REALTY INC. BROKERAGE",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              gridSection,
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
      GoogleMapAddress(values, new LatLng(0,0))
      ]
    );
  }
}

List<Container> _generateGridItems(List imgs, double fs) {
  List<Container> gridItems = new List();
  for (int i = 0; i < imgs.length; i++) {
    gridItems.add(Container(
                child: GridListImg(imgs[i])
        ));
  }
  return gridItems;
}

