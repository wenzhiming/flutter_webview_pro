//
//  Generated file. Do not edit.
//

// clang-format off

#import "GeneratedPluginRegistrant.h"

#if __has_include(<flutter_webview_pro/FLWebViewFlutterPlugin.h>)
#import <flutter_webview_pro/FLWebViewFlutterPlugin.h>
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
  [FLWebViewFlutterPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLWebViewFlutterPlugin"]];
  [IntegrationTestPlugin registerWithRegistrar:[registry registrarForPlugin:@"IntegrationTestPlugin"]];
}

@end
