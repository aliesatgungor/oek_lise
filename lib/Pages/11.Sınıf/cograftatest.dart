import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class CografyaTest11 extends StatefulWidget {
  CografyaTest11({Key? key}) : super(key: key);
  @override
  _CografyaTest11State createState() => _CografyaTest11State();
}

class _CografyaTest11State extends State<CografyaTest11> {
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
                "https://ogmmateryal.eba.gov.tr/soru-bankasi-kazanim/cografya?s=8&d=11&u=0&k=0")),
        initialOptions: options,
      ),
    ));
  }
}
