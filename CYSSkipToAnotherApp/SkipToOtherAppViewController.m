//
//  SkipToOtherAppViewController.m
//  CYSSkipToAnotherApp
//
//  Created by YS_Chan on 15/11/6.
//  Copyright © 2015年 YS_Chan. All rights reserved.
//

#import "SkipToOtherAppViewController.h"

@interface SkipToOtherAppViewController ()

@end

@implementation SkipToOtherAppViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)skipToOtherApp:(UIButton *)sender {
    switch (sender.tag) {
        case 1:
        {
            /**
             *  在跳转目标的program中 先设置号约定好的url --》target --》Info --> url Types -->添加url
             *  再在
             1. iOS9.0之前：-(BOOL)application: openURL: options:
             2. iOS9.0之后：-(BOOL)application: handleOpenURL:
             方法中实现对url传递数据的处理
             NSString *urlstr = url.absoluteString;
             if ([urlstr hasPrefix:@"myapp12345"]) {
             urlstr = [urlstr stringByReplacingOccurrencesOfString:@"myapp12345://" withString:@""];
             NSArray *array = [urlstr componentsSeparatedByString:@"&"];
             NSMutableDictionary *dic = [NSMutableDictionary dictionaryWithCapacity:10];
             
             for (NSString *arrayStr in array) {
             NSLog(@"%@", arrayStr);
             NSArray *array2 = [arrayStr componentsSeparatedByString:@":"];
             if ([[array2 objectAtIndex:0] length] > 0) {
             [dic setObject:array2[1] forKey:array2[0]];
             }
             }
             self.vc.vcDic = dic;
             return YES;
             }
             return NO;
             */
            //myapp12345 为对应的app的url，要再url后再加“:”才能成功跳转
//            NSString *str = @"myapp12345://name:chen&secret:123456&";
            //在网络开发中， 如果请求的url包含中文 空格等一些特殊的字符， url必须进行转义后才能请求成功。
//            NSURL *url = [NSURL URLWithString:[str stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
//            [[UIApplication sharedApplication] openURL:url];
            
            
            //特殊情况没转码可以试试以下代码
            /*
             (NSString *)CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault,
             (CFStringRef)string,
             NULL,
             CFSTR("!*'();:@&=+$,/?%#[]"),
             kCFStringEncodingUTF8);
             */
            [self openAppUrl:@"ETicketxxx"];
//            [self openAppUrl:@"mymobileportal"];
            
        }
            break;
        case 2:{
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"wechat:"]];
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"weixin:"]];
            
        }
            break;
        case 3:{
            
        }
            break;
            
        default:
            break;
    }
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (void)openAppUrl:(NSString *)urlString {
    if (![urlString hasSuffix:@":"]) {
        urlString = [urlString stringByAppendingString:@":"];
    }
//    if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:urlString]]) {
//        if ([[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlString]]) {
//            NSLog(@"成功打开");
//        } else {
//            NSLog(@"打开失败");
//        }
//    }else{
//        NSLog(@"不能打开");
//    }
    if ([[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlString]]) {
        NSLog(@"成功打开");
    } else {
        NSLog(@"打开失败");
    }
}

@end
