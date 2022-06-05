import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
class Developer extends StatefulWidget {

  Developer({Key? key}) : super(key: key);
  @override
  _DeveloperState createState() => _DeveloperState();
}
class _DeveloperState extends State<Developer> {
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
        URLRequest(url: Uri.parse("https://aliesatgungor.com/")),
        initialOptions: options,
      ),
    );
  }
}