import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'بابلو شيتا',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  WebViewController _webViewController;
  String url= "https://paploshita.com";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _launchInWebViewWithDomStorage(url);
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }
  Future<void> _launchInWebViewWithDomStorage(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
        enableJavaScript: true,
        enableDomStorage: true,
      );
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        // return false;
      },
      child: Scaffold(
        backgroundColor: Colors.black,
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            child:
            // Container()
            WebView(
              debuggingEnabled: false,
              // javascriptMode: JavascriptMode.unrestricted,
              onWebViewCreated: (controller) {
                print("web view created");
                _webViewController = controller;
                _webViewController.loadUrl(url);
              },
              gestureNavigationEnabled: true,
              javascriptMode: JavascriptMode.unrestricted,
              onWebResourceError: (error) {},
            ),
          )
      ),
    );
  }
}
