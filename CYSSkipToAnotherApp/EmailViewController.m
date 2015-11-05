//
//  EmailViewController.m
//  CYSSkipToAnotherApp
//
//  Created by YS_Chan on 15/11/5.
//  Copyright © 2015年 YS_Chan. All rights reserved.
//

#import "EmailViewController.h"

@interface EmailViewController ()
@property (weak, nonatomic) IBOutlet UITextField *addressTextField;
@property (weak, nonatomic) IBOutlet UITextField *suffixTextField;

@end

@implementation EmailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sendEmail:(UIButton *)sender {
    NSString *urlStr = [NSString stringWithFormat:@"mailto://%@@%@", self.addressTextField.text, self.suffixTextField.text];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlStr]];
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
