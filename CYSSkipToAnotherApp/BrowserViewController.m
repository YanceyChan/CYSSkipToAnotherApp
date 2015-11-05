//
//  BrowserViewController.m
//  CYSSkipToAnotherApp
//
//  Created by YS_Chan on 15/11/5.
//  Copyright © 2015年 YS_Chan. All rights reserved.
//

#import "BrowserViewController.h"

@interface BrowserViewController ()
@property (weak, nonatomic) IBOutlet UITextField *browserAddressTextField;

@end

@implementation BrowserViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)skip:(UIButton *)sender {
    NSString *urlStr = [NSString stringWithFormat:@"http://%@", self.browserAddressTextField.text];
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
