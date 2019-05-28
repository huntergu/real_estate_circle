import 'package:flutter/material.dart';

class GridListCircleAvatarImg extends StatelessWidget {
  final String img;
  const GridListCircleAvatarImg(this.img);

  @override
  Widget build(BuildContext context) {
    return
         Container(
          margin: EdgeInsets.all(10.0),
            width: 180.0,
            height: 120.0,
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
