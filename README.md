# WebView for Flutter

A Flutter plugin that provides a WebView widget   who Support photo upload。

On iOS the WebView widget is backed by a [WKWebView](https://developer.apple.com/documentation/webkit/wkwebview);
On Android the WebView widget is backed by a [WebView](https://developer.android.com/reference/android/webkit/WebView).

## Usage
Add `webview_flutter_upload` as a [dependency in your pubspec.yaml file](https://flutter.dev/docs/development/platform-integration/platform-channels).

You can now include a WebView widget in your widget tree.

The official flutter plugin `webview_flutter` Android does not support H5 file upload, that is, it does not support the H5 code below.

```dart
<input type="file">
```

This caused us a lot of inconvenience, so this plugin adds support for file upload on the android side on the basis of the official plugin.
