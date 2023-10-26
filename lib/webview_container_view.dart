import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewContainerView extends StatefulWidget {
  const WebViewContainerView({super.key});

  @override
  State<WebViewContainerView> createState() => _WebViewContainerViewState();
}

class _WebViewContainerViewState extends State<WebViewContainerView> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(
      Uri.parse('https://savdo.inware.uz/demo'),
    );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Webview container view'),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
