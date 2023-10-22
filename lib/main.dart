import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('WebView Example'),
        ),
        body: WebViewExample(),
      ),
    );
  }
}

class WebViewExample extends StatefulWidget {
  @override
  _WebViewExampleState createState() => _WebViewExampleState();
}

class _WebViewExampleState extends State<WebViewExample> {
  @override
  void initState() {
    super.initState();
    // Enable JavaScript (if needed) - uncomment the following line
    // WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: 'https://h5.salanfun.top/',
      javascriptMode: JavascriptMode.unrestricted,
      onWebViewCreated: (WebViewController webViewController) {
        // Handle the WebView when it's created
      },
      onPageFinished: (String url) {
        // Handle when the page is finished loading
        print('Page has finished loading: $url');
      },
      onWebResourceError: (WebResourceError error) {
        // Handle WebView errors
        print('Error: ${error.description}');
      },
    );
  }
}