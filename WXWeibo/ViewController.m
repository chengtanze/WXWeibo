//
//  ViewController.m
//  WXWeibo
//
//  Created by cheng on 15/1/7.
//  Copyright (c) 2015年 cheng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic, strong) WeiboSDK * WeiBoSDK;
@end

@implementation ViewController
#define kRedirectURI    @"http://www.sina.com"
#define kAppKey1         @"2045436852"
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [WeiboSDK enableDebugMode:YES];
    [WeiboSDK registerApp:kAppKey];
    
    
    WBAuthorizeRequest *request = [WBAuthorizeRequest request];
    request.redirectURI = kAppRedirectURI;
    request.scope = @"all";
    request.userInfo = @{@"SSO_From": @"ViewController",
                         @"Other_Info_1": [NSNumber numberWithInt:123],
                         @"Other_Info_2": @[@"obj1", @"obj2"],
                         @"Other_Info_3": @{@"key1": @"obj1", @"key2": @"obj2"}};
    BOOL sucss = [WeiboSDK sendRequest:request];
    NSLog(@"Sucss :%ld", sucss);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
