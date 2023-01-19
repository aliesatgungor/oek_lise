import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'dart:async';
import 'dart:io';
import 'package:oek_lise/main.dart';

class MatematikTest10 extends StatefulWidget {
  MatematikTest10({Key? key}) : super(key: key);
  @override
  _MatematikTest10State createState() => _MatematikTest10State();
}

class _MatematikTest10State extends State<MatematikTest10> {
  final GlobalKey webViewKey = GlobalKey();

  InAppWebViewController? webViewController;
  InAppWebViewGroupOptions options = InAppWebViewGroupOptions(
      crossPlatform: InAppWebViewOptions(
        useShouldOverrideUrlLoading: true,
        mediaPlaybackRequiresUserGesture: false,
      ),
      android: AndroidInAppWebViewOptions(
        useHybridComposition: true,
      ),
      ios: IOSInAppWebViewOptions(
        allowsInlineMediaPlayback: true,
      ));

  late PullToRefreshController pullToRefreshController;
  String url = "";
  double progress = 0;
  final urlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: InAppWebView(
        key: webViewKey,
        initialUrlRequest: URLRequest(
            url: Uri.parse(
                "https://ogmmateryal.eba.gov.tr/soru-bankasi-kazanim/matematik?s=9&d=51&u=0&k=0")),
        initialOptions: options,
      ),
    ));
  }
}
