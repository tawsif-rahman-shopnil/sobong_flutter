import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(22, 32, 45, 255), // Set the background color
          elevation: 0, // Remove the elevation
        ),
        body: WebViewExample(),
      ),
      debugShowCheckedModeBanner: false, // Remove the debug banner
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
        print('Error: ${error.description}');
        print('Error Code: ${error.errorCode}');
        print('Error Domain: ${error.domain}');
        print('Error Failing URL: ${error.failingUrl}');
      },
    );
  }
}
