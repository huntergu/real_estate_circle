import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class NewsDetail extends StatelessWidget {
  static const routeName = '/newsdet';
  String url;
  NewsDetail(String url) {
    this.url = url;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: WebviewScaffold(
        url: this.url,
        hidden: true,
      ),
    );
  }
}
