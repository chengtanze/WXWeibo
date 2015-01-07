//
//  ViewController.h
//  WXWeibo
//
//  Created by cheng on 15/1/7.
//  Copyright (c) 2015年 cheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WeiboSDK.h"

//weibo OAuthu2.0
#define kAppKey @"3359697593"
#define kAppSecret @"6aa950ac83e329d4b6b9f401d6cb8d3d"
#define kAppRedirectURI @"https://api.weibo.com/oauth2/default.html"


@interface ViewController : UIViewController<WBHttpRequestDelegate>


@end

