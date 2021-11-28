import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Covid 19 Tracker'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: WebView(
            javascriptMode: JavascriptMode.unrestricted,
            initialUrl:
                // 'https://www.bing.com/covid/local/raipur_chhattisgarh_india?form=C19ANS',
                'https://www.covid19india.org/'),
      ),
    );
  }
}
