//
//  PhoneViewController.m
//  CYSSkipToAnotherApp
//
//  Created by YS_Chan on 15/11/4.
//  Copyright © 2015年 YS_Chan. All rights reserved.
//

#import "PhoneViewController.h"

@interface PhoneViewController ()<UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *phoneNumberTextField;

@end

@implementation PhoneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)callTelePhone:(UIButton *)sender {
    if (![self isBlankString:self.phoneNumberTextField.text]) {
        NSString *phoneNumber = [NSString stringWithFormat:@"tel://%@", self.phoneNumberTextField.text];
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:phoneNumber]];
    }else{
        UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"" message:@"请输入电话号码" delegate:self cancelButtonTitle:@"就不写" otherButtonTitles:@"好的，么么哒", nil];
        [alertView show];
        
    }
}

- (BOOL) isBlankString:(NSString *)string {
    
    if (string == nil || string == NULL) {
        return YES;
    }
    
    if ([string isKindOfClass:[NSNull class]]) {
        return YES;
    }
    
    if ([[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length]==0) {
        return YES;
    }
    return NO;
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex NS_DEPRECATED_IOS(2_0, 9_0){
    if (buttonIndex == 1){
        [self.phoneNumberTextField becomeFirstResponder];
    }
}

@end
