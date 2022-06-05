import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
class Biyoloji9 extends StatefulWidget {

  Biyoloji9({Key? key}) : super(key: key);
  @override
  _Biyoloji9State createState() => _Biyoloji9State();
}
class _Biyoloji9State extends State<Biyoloji9> {
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
        URLRequest(url: Uri.parse("https://www.dersizleyin.com/kategori/lise/9-sinif/biyoloji-9/")),
        initialOptions: options,

      ),
    );
  }
}