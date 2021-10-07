# Flutter WebView Pro

[![pub package](https://img.shields.io/badge/pub-v1.0.0-orange)](https://pub.dartlang.org/packages/flutter_webview_pro)

A Flutter plugin that provides a WebView widget   who Support photo upload/take camera and Geolocation.
The official flutter plugin `webview_flutter` Android does not support H5 file upload, that is, it does not support the H5 code below.

```dart
<input type="file">
```

This caused us a lot of inconvenience, so this plugin adds support for file upload and geolocation on the android side on the basis of the official plugin.


## Installing

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  flutter_webview_pro: ^1.0.0
```

## Import

```dart
import 'package:flutter_webview_pro/webview_flutter.dart';
```

## How to use

```dart
      body: Builder(builder: (BuildContext context) {
        return WebView(
          initialUrl: 'https://www.xxxxxxx',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
          onProgress: (int progress) {
            print("WebView is loading (progress : $progress%)");
          },
          javascriptChannels: <JavascriptChannel>{
            _toasterJavascriptChannel(context),
          },
          navigationDelegate: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              print('blocking navigation to $request}');
              return NavigationDecision.prevent;
            }
            print('allowing navigation to $request');
            return NavigationDecision.navigate;
          },
          onPageStarted: (String url) {
            print('Page started loading: $url');
          },
          onPageFinished: (String url) {
            print('Page finished loading: $url');
          },
          gestureNavigationEnabled: true,
          geolocationEnabled: false,//support geolocation or not
        );
      }),
```

