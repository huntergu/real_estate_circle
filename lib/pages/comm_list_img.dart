import 'package:flutter/cupertino.dart';

class CommListImg extends StatelessWidget {
  final String img;
  const CommListImg(this.img);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(
        margin: const EdgeInsets.all(20.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.network(this.img, height: 90, width: 115,),
        )
    ));
  }
}