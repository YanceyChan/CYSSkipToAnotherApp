//
//  TableViewController.m
//  CYSSkipToAnotherApp
//
//  Created by YS_Chan on 15/11/4.
//  Copyright © 2015年 YS_Chan. All rights reserved.
//

#import "TableViewController.h"
#define kMY_CELLIDENTIFIER @"myCell"

//都是跳转到设置页
#define kSKIP_APP_DICTIONARY @{ @"关于本机":@"prefs:root=General&path=About",\
                                @"辅助功能":@"prefs:root=General&path=ACCESSIBILITY",\
                                @"飞行模式":@"prefs:root=AIRPLANE_MODE",\
                                @"自动锁定":@"prefs:root=General&path=AUTOLOCK",\
                                @"Brightness":@"prefs:root=Brightness",\
                                @"蓝牙":@"prefs:root=Bluetooth",\
                                @"日期与实践":@"prefs:root=General&path=DATE_AND_TIME",\
                                @"FaceTime":@"prefs:root=FACETIME",\
                                @"通用":@"prefs:root=General",\
                                @"iCloud":@"prefs:root=CASTLE",\
                                @"iCloud 存储于备份":@"prefs:root=CASTLE&path=STORAGE_AND_BACKUP",\
                                @"语言与地区":@"prefs:root=General&path=INTERNATIONAL",\
                                @"定位服务":@"prefs:root=LOCATION_SERVICES",\
                                @"音乐":@"prefs:root=MUSIC",\
                                @"音乐EQ":@"prefs:root=MUSIC&path=EQ",\
                                @"音乐VolumeLimit":@"prefs:root=MUSIC&path=VolumeLimit",\
                                @"Network":@"prefs:root=Network",\
                                @"NIKE_PLUS_IPOD(只到设置)":@"prefs:root=NIKE_PLUS_IPOD",\
                                @"备忘录":@"prefs:root=NOTES",\
                                @"NOTIFICATIONS_ID":@"root=NOTIFICATIONS_ID",\
                                @"电话":@"prefs:root=Phone",\
                                @"照片与相机":@"prefs:root=Photos",\
                                @"描述文件":@"prefs:root=General&path=ManagedConfigurationList",\
                                @"还原":@"prefs:root=General&path=Reset",\
                                @"Safari":@"prefs:root=Safari",\
                                @"Assistant（只到通用）":@"prefs:root=General&path=Assistant",\
                                @"声音":@"prefs:root=Sounds",\
                                @"软件更新":@"prefs:root=General&path=SOFTWARE_UPDATE_LINK",\
                                @"TWITTER":@"prefs:root=TWITTER",\
                                @"用量":@"prefs:root=General&path=USAGE",\
                                @"Network/VPN（只到通用）":@"prefs:root=General&path=Network/VPN",\
                                @"墙纸":@"prefs:root=Wallpaper",\
                                @"WI-FI":@"prefs:root=WIFI",\
                                };

//[[UIApplicationsharedApplication] openURL:[NSURLURLWithString:@”mailto://admin@hzlzh.com”]];
//                                           
//                                           
//[[UIApplication sharedApplication] openURL:[NSURLURLWithString:@”tel://8008808888”]];
//                                                                                       
//                                                                                       
//[[UIApplicationsharedApplication] openURL:[NSURL URLWithString:@”sms://800888”]];
//                                                                                                                                  
//                                                                                                                                  
//                                                                                                                                  
//[[UIApplicationsharedApplication] openURL:[NSURLURLWithString:@”http://www.hzlzh.com“]];
//                                                                                                                                                                             
//                                                                                                                                                                             
//[[UIApplicationsharedApplication] openURL:[NSURL URLWithString:@”remote://fff”]];

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kMY_CELLIDENTIFIER];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSDictionary *dic = kSKIP_APP_DICTIONARY;
    NSArray *names = [dic allKeys];
    return [names count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kMY_CELLIDENTIFIER forIndexPath:indexPath];
    NSDictionary *dic = kSKIP_APP_DICTIONARY;
    NSArray *names = [dic allKeys];
    cell.textLabel.text = names[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary *dics = kSKIP_APP_DICTIONARY;
    NSArray *names = [dics allKeys];
    NSString *urlString = [dics objectForKey:names[indexPath.row]];
    NSLog(@"%@", urlString);
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlString]];
}


@end
