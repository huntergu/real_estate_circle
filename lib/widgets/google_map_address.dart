import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:real_estate_circle/utils/number_format.dart';

class GoogleMapAddress extends StatefulWidget {
  List values;
  LatLng latlng;

  GoogleMapAddress(List values, LatLng latlng) {
    this.values = values;
    this.latlng = latlng;
  }

  @override
  _GoogleMapAddressState createState() => _GoogleMapAddressState();
}

class _GoogleMapAddressState extends State<GoogleMapAddress> {
  Set<Marker> marks = Set();
  String v = '';
  @override
  Widget build(BuildContext context) {
    return
      Container(
        height: 300,
        width: MediaQuery.of(context).size.width,
        child: GoogleMap(
          markers: this.marks,
          scrollGesturesEnabled: true,
          zoomGesturesEnabled: true,
          myLocationEnabled: true,
          mapType: MapType.normal,
          onMapCreated: (GoogleMapController _mapController) async {
            List<Placemark> placemarks = await Geolocator().placemarkFromAddress(widget.values[0]);
            if (null != placemarks && placemarks.length > 0) {
              Placemark placemark = placemarks[0];
              LatLng latlng = new LatLng(placemark.position.latitude, placemark.position.longitude);
              if (widget.values.length > 1) {
                v = widget.values[1];
              }
              Marker marker = Marker(
                  markerId: MarkerId(widget.values[0]),
                  infoWindow: InfoWindow(
                      title: widget.values[0],
                    snippet: NumberFormatter.formatMoney(double.parse(v), 0)
                  ),

                  position: latlng
              );
              this.setState(()=> this.marks.add(marker));

              _mapController.moveCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(placemark.position.latitude, placemark.position.longitude), zoom: 14)));
            } else {
              log('place mark does not find for address ' + widget.values[0]);
            }
          },
          initialCameraPosition: CameraPosition(
              target: widget.latlng,
          ),
        ),
      );
  }


}
