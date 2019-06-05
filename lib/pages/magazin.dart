import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_circle/localizations.dart';

class Magazine extends StatelessWidget {
  static const routeName = '/magazine';

  @override
  Widget build(BuildContext context) {
    double aspectRatio =
        MediaQuery.of(context).orientation == Orientation.landscape ? 1.2 : 1.2;
    double fs =
        MediaQuery.of(context).orientation == Orientation.landscape ? 15 : 20;

    return Container(
      child: Center(
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
            child: Column(
              children: <Widget>[
                SizedBox(height: 20.0),
                Center(
                  child: Text(
                    RecLocalizations.of(context).recFeature,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                SizedBox(height: 20.0),
                Center(
                  child: Text(
                    RecLocalizations.of(context).recSub,
                    style: TextStyle(fontSize: 20, color: Colors.black38),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 40.0),
                Center(
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          fit: FlexFit.loose,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Icon(
                                Icons.chat,
                                size: 60,
                                color: Colors.lightBlueAccent,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Flexible(
                                  fit: FlexFit.loose,
                                  child: Text(
                                    RecLocalizations.of(context).recF1,
                                    style: TextStyle(fontSize: 20),
                                    textAlign: TextAlign.center,
                                  ))
                            ],
                          ),
                        ),
                        Flexible(
                            flex: 1,
                            fit: FlexFit.loose,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Icon(
                                  Icons.verified_user,
                                  size: 60,
                                  color: Colors.green,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Flexible(
                                    fit: FlexFit.loose,
                                    child: Text(
                                      RecLocalizations.of(context).recF2,
                                      style: TextStyle(fontSize: 20),
                                      textAlign: TextAlign.center,
                                    ))
                              ],
                            )),
                        Flexible(
                            flex: 1,
                            fit: FlexFit.loose,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Icon(
                                  Icons.fingerprint,
                                  size: 60,
                                  color: Colors.red,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Flexible(
                                    fit: FlexFit.loose,
                                    child: Text(
                                      RecLocalizations.of(context).recF3,
                                      style: TextStyle(fontSize: 20),
                                      textAlign: TextAlign.center,
                                    ))
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40.0),
                Center(
                  child: Text(
                    RecLocalizations.of(context).recDesc,
                    style: TextStyle(fontSize: 20, color: Colors.black38),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 60.0),
              ],
            ),
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
