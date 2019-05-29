import 'package:flutter/material.dart';

class GridListCircleAvatarImg extends StatelessWidget {
  final String img;
  const GridListCircleAvatarImg(this.img);

  @override
  Widget build(BuildContext context) {
    double radius = MediaQuery.of(context).orientation == Orientation.landscape ? 1 : 0.5;
    double imgWidth = 180;
    return
         Container(
          margin: EdgeInsets.all(10.0),
            width: imgWidth,
            height: imgWidth * radius,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image:
                        NetworkImage(this.img)),
              boxShadow: [
                BoxShadow(
                color: Colors.black,
                blurRadius: 10.0)
              ]
            ));
  }
}
