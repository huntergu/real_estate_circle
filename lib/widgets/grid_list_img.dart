import 'package:flutter/material.dart';

class GridListImg extends StatelessWidget {
  final String img;
  const GridListImg(this.img);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(
        margin: const EdgeInsets.all(20.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.network(this.img, fit: BoxFit.cover),
        )
    ));
  }
}