import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'dart:async';
import 'dart:io';
import 'package:oek_lise/main.dart';
class Cografya10 extends StatefulWidget {

  Cografya10({Key? key}) : super(key: key);
  @override
  _Cografya10State createState() => _Cografya10State();
}
class _Cografya10State extends State<Cografya10> {
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
    return Scaffold(

      body: InAppWebView(
        key: webViewKey,
        initialUrlRequest:
        URLRequest(url: Uri.parse("https://www.dersizleyin.com/kategori/lise/10-sinif/cografya-10/")),
        initialOptions: options,
      ),
    );
  }
}