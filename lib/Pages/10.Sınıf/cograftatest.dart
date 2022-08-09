import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
class CografyaTest10 extends StatefulWidget {

  CografyaTest10({Key? key}) : super(key: key);
  @override
  _CografyaTest10State createState() => _CografyaTest10State();
}
class _CografyaTest10State extends State<CografyaTest10> {
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
        URLRequest(url: Uri.parse("https://ogmmateryal.eba.gov.tr/soru-bankasi-kazanim/cografya?s=6&d=9&u=0&k=0")),
        initialOptions: options,
      ),
    );
  }
}