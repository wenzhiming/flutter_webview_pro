# Flutter WebView Pro
## Migrate to [wenzhiming/flutter-plugins](https://github.com/wenzhiming/flutter-plugins/tree/dev/packages/webview_flutter/webview_flutter)

[![pub package](https://img.shields.io/badge/pub-v3.0.1+2-orange)](https://pub.dartlang.org/packages/flutter_webview_pro)

A Flutter plugin that provides a WebView widget   who Support photo upload/take camera and Geolocation.
The official flutter plugin `webview_flutter` Android does not support H5 file upload, that is, it does not support the H5 code below.

```dart
<input type="file">
```

This caused us a lot of inconvenience, so this plugin adds support for file upload and geolocation on the android side on the basis of the official plugin.

## Feature
- Support photo upload,take camera
- Support Geolocation
- Support select pdf|doc|xls files

## usage

### 1.Installing

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  flutter_webview_pro: ^3.0.1+2
```

### 2.Import

```dart
import 'package:flutter_webview_pro/webview_flutter.dart';
```

### 3.How to use

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
## Gateway

 - [FAQ](FAQ.md)
 - [Update log](CHANGELOG.md)

 
## Licenses
Copyright 2021 wenzhiming

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
