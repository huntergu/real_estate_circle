import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_circle/localizations.dart';
import 'package:real_estate_circle/pages/magazin_form.dart';

class Magazine extends StatelessWidget {
  static const routeName = '/magazine';

  @override
  Widget build(BuildContext context) {
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
                    RecLocalizations.of(context).magApply,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                SizedBox(height: 20.0),
                Center(
                  child: Text(
                    RecLocalizations.of(context).magApplySub,
                    style: TextStyle(fontSize: 20, color: Colors.black38),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20.0),
                Center(
                  child: RaisedButton(
                    child: Text(
                      RecLocalizations.of(context).magApplyButton,
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.purple,
                    elevation: 4.0,
                    splashColor: Colors.blueGrey,
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        MagazineForm.routeName,
                      );
                    },
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
