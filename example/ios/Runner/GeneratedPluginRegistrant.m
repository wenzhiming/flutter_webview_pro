//
//  Generated file. Do not edit.
//

// clang-format off

#import "GeneratedPluginRegistrant.h"

#if __has_include(<flutter_webview_pro/WebViewProFlutterPlugin.h>)
#import <flutter_webview_pro/WebViewProFlutterPlugin.h>
#else
@import flutter_webview_pro;
#endif

#if __has_include(<integration_test/IntegrationTestPlugin.h>)
#import <integration_test/IntegrationTestPlugin.h>
#else
@import integration_test;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [WebViewProFlutterPlugin registerWithRegistrar:[registry registrarForPlugin:@"WebViewProFlutterPlugin"]];
  [IntegrationTestPlugin registerWithRegistrar:[registry registrarForPlugin:@"IntegrationTestPlugin"]];
}

@end
