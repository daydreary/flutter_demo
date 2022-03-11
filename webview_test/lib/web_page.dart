import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_test/test_page.dart';

class WebPage extends StatefulWidget {
  const WebPage({Key? key}) : super(key: key);

  @override
  _WebPageState createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {

  final String url = "https://h5-ol.sns.sohu.com/hy-moyukik-h5/topic/detail/1502089429110525977";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Webview Test"),
      ),
      body: WebView(
        onWebViewCreated: (controller) async {
          controller.loadUrl(url);
        },
        javascriptMode: JavascriptMode.unrestricted,
        // initialUrl: url,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: jump,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  void jump() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const TestPage()));
  }
}
