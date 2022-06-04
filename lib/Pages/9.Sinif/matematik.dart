import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'dart:async';
import 'dart:io';

import 'package:oek_lise/main.dart';
class Matematik9 extends StatefulWidget {

  Matematik9({Key? key}) : super(key: key);
  @override
  _Matematik9State createState() => _Matematik9State();
}
class _Matematik9State extends State<Matematik9> {
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
  void initState() {
    super.initState();

    pullToRefreshController = PullToRefreshController(
      options: PullToRefreshOptions(
        color: Colors.blue,
      ),
      onRefresh: () async {
        if (Platform.isAndroid) {
          webViewController?.reload();
        } else if (Platform.isIOS) {
          webViewController?.loadUrl(
              urlRequest: URLRequest(url: await webViewController?.getUrl()));
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InAppWebView(
        key: webViewKey,
        initialUrlRequest:
        URLRequest(url: Uri.parse("https://www.dersizleyin.com/kategori/lise/9-sinif/matematik-9/")),
        initialOptions: options,
        pullToRefreshController: pullToRefreshController,
        onWebViewCreated: (controller) {
          webViewController = controller;
        },
        onLoadStart: (controller, url) {
          setState(() {
            this.url = url.toString();
            urlController.text = this.url;
          });
        },
        androidOnPermissionRequest: (controller, origin, resources) async {
          return PermissionRequestResponse(
              resources: resources,
              action: PermissionRequestResponseAction.GRANT);
        },
        shouldOverrideUrlLoading: (controller, navigationAction) async {
          var uri = navigationAction.request.url!;



          return NavigationActionPolicy.ALLOW;
        },
        onLoadStop: (controller, url) async {
          pullToRefreshController.endRefreshing();
          setState(() {
            this.url = url.toString();
            urlController.text = this.url;
          });
        },
        onLoadError: (controller, url, code, message) {
          pullToRefreshController.endRefreshing();
        },
        onProgressChanged: (controller, progress) {
          if (progress == 100) {
            pullToRefreshController.endRefreshing();
          }
          setState(() {
            this.progress = progress / 100;
            urlController.text = this.url;
          });
        },
        onUpdateVisitedHistory: (controller, url, androidIsReload) {
          setState(() {
            this.url = url.toString();
            urlController.text = this.url;
          });
        },
        onConsoleMessage: (controller, consoleMessage) {
          print(consoleMessage);
        },
      ),
    );
  }
}