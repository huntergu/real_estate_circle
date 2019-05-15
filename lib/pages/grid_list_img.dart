import 'package:flutter/cupertino.dart';

class GridListImg extends StatelessWidget {
  final String img;
  const GridListImg(this.img);

  @override
  Widget build(BuildContext context) {
    return new Expanded(child: Container(
        margin: const EdgeInsets.all(20.0),
        child: new ClipRRect(
          borderRadius: new BorderRadius.circular(10.0),
          child: new Image.network(this.img),
        )
    ));
  }
}