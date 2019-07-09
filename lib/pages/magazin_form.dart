import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_circle/localizations.dart';

class MagazineForm extends StatelessWidget {
  static const routeName = '/magazineform';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final _form = GlobalKey<FormState>();
    var _initValues = {
      'name' : '',
      'address': '',
      'mobile': '',
      'email': ''
    };
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
                              child: Form(
                                key: _form,
                                  child: Column(
                                    children: <Widget>[
                                      TextFormField(
                                        initialValue: _initValues['name'],
                                        decoration: InputDecoration(prefixIcon: Padding(padding: EdgeInsets.all(0.0), child: Icon(Icons.face),), hintText: 'name...'),
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return 'Please provide name.';
                                          }
                                          return null;
                                        },
                                      ),
                                      TextFormField(
                                        initialValue: _initValues['address'],
                                        decoration: InputDecoration(prefixIcon: Padding(padding: EdgeInsets.all(0.0), child: Icon(Icons.directions),), hintText: 'address...'),
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return 'Please provide address.';
                                          }
                                          return null;
                                        },
                                      ),
                                      TextFormField(
                                        initialValue: _initValues['Mobile'],
                                        decoration: InputDecoration(prefixIcon: Padding(padding: EdgeInsets.all(0.0), child: Icon(Icons.phone),), hintText: 'mobile...'),
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return 'Please provide mobile number.';
                                          }
                                          return null;
                                        },
                                      ),
                                      TextFormField(
                                        initialValue: _initValues['email'],
                                        decoration: InputDecoration(prefixIcon: Padding(padding: EdgeInsets.all(0.0), child: Icon(Icons.email),), hintText: 'email...'),
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return 'Please provide email.';
                                          }
                                          return null;
                                        },
                                      ),
                                      SizedBox(height: 30,),
                                      Center(
                                        child: RaisedButton(
                                          child: Text(
                                            '发送登记表',
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
                                    ],
                                  ),
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