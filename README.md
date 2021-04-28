# WebView Flutter Upload

[![pub package](https://img.shields.io/badge/pub-v0.1.0-orange)](https://pub.dartlang.org/packages/webview_flutter_upload)

A Flutter plugin that provides a WebView widget   who Support photo upload.
The official flutter plugin `webview_flutter` Android does not support H5 file upload, that is, it does not support the H5 code below.

```dart
<input type="file">
```

This caused us a lot of inconvenience, so this plugin adds support for file upload on the android side on the basis of the official plugin.


## Usage
Depend on it
Run this command:

With Flutter:
```dart
 $ flutter pub add webview_flutter_upload
 ```

This will add a line like this to your package's pubspec.yaml (and run an implicit dart pub get):

```dart
dependencies:
  webview_flutter_upload: ^0.1.0
  ```

Alternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.

Import it
Now in your Dart code, you can use:

```dart
import 'package:webview_flutter_upload/platform_interface.dart';
import 'package:webview_flutter_upload/webview_flutter.dart';
```

