import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class BiyolojiTest10 extends StatefulWidget {
  BiyolojiTest10({Key? key}) : super(key: key);
  @override
  _BiyolojiTest10State createState() => _BiyolojiTest10State();
}

class _BiyolojiTest10State extends State<BiyolojiTest10> {
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
                "https://ogmmateryal.eba.gov.tr/soru-bankasi-kazanim/biyoloji?s=7&d=0&u=0&k=0")),
        initialOptions: options,
      ),
    ));
  }
}
