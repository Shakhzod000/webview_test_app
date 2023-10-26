import 'package:flutter/material.dart';
import 'package:weview_test_app/webview_container_view.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WebviewExample(),
  ));
}

class WebviewExample extends StatefulWidget {
  const WebviewExample({super.key});

  @override
  State<WebviewExample> createState() => _WebviewExampleState();
}

class _WebviewExampleState extends State<WebviewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Webview Flutter'),
      ),
      body: content(context),
    );
  }
}

Widget content(BuildContext context) {
  return Center(
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const WebViewContainerView(),
          ),
        );
      },
      child: const Text('ENTER'),
    ),
  );
}
