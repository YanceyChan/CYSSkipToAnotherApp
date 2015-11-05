//
//  SmsViewController.m
//  CYSSkipToAnotherApp
//
//  Created by YS_Chan on 15/11/5.
//  Copyright © 2015年 YS_Chan. All rights reserved.
//

#import "SmsViewController.h"

@interface SmsViewController ()
@property (weak, nonatomic) IBOutlet UITextField *smsNumberTextField;

@end

@implementation SmsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sendSMS:(UIButton *)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"sms://%@", self.smsNumberTextField.text]]];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
