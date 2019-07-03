import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_circle/localizations.dart';

class MagazineForm extends StatelessWidget {
  static const routeName = '/magazineform';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return


      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://58realty.so.house/TheMaterialTheme/assets/img/profile_city.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
        body:
          Container(
              margin: EdgeInsets.only(top: 100, left: 10, right: 10),
                child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Column(
                        children: <Widget>[
                          Text('地产杂志邮寄申请表', style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),),
                          SizedBox(height: 10,),
                          Text('内容丰富，印刷精美！', style: TextStyle(fontSize: 20, color: Colors.grey),)
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 20.0),
                            InkWell(child: Text('返回主页', style: TextStyle(fontSize: 18, color: Colors.purple),), onTap: () {
                              Navigator.pushNamed(context, '/');
                            },),
                            Container(
                              child: Text(
                                RecLocalizations.of(context).magApply,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
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
                                  // Perform some action
                                },
                              ),
                            ),
                            SizedBox(height: 60.0),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
          ),

    ),
      );
  }
}

class ApplyForm extends StatefulWidget {
  @override
  _ApplyFormState createState() => _ApplyFormState();
}

class _ApplyFormState extends State<ApplyForm> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }

}