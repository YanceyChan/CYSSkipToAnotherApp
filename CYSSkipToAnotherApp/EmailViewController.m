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
    //  不用mailto://  也是一样的。  不同邮件地址用 & 隔开
//    NSString *urlStr = [NSString stringWithFormat:@"mailto://%@@%@", self.addressTextField.text, self.suffixTextField.text];
    NSString *urlStr = [NSString stringWithFormat:@"mailto:%@@%@", self.addressTextField.text, self.suffixTextField.text];
//    NSString *urlStr = @"mailto:foo@example.com?to=232323@qq.com&to=251622@163.com&cc=bar@example.com&subject=Greetings%20from%20Cupertino!&body=Wish%20you%20were%0D%0Ahere!";
    /*
     *  mailto:foo@example.com?to=232323@qq.com?to=251622@163.com&cc=bar@example.com&subject=Greetings%20from%20Cupertino!&body=Wish%20you%20were%0D%0Ahere! 的意思
     *  mailto:[邮箱地址]后跟一个?以后的跟&
     *  ?to=[其他收件人]
     *  &to=[其他收件人]
     *  &cc=[抄送人]
     *  &subject=[主题]
     *  &body=[内容]
     *  %0D%0A 换行
     *  %20    空格
     */
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
