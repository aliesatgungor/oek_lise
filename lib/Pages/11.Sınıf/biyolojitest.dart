import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class BiyolojiTest11 extends StatefulWidget {
  BiyolojiTest11({Key? key}) : super(key: key);
  @override
  _BiyolojiTest11State createState() => _BiyolojiTest11State();
}

class _BiyolojiTest11State extends State<BiyolojiTest11> {
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
                "https://ogmmateryal.eba.gov.tr/soru-bankasi-kazanim/biyoloji?s=8&d=7&u=0&k=0")),
        initialOptions: options,
      ),
    ));
  }
}
