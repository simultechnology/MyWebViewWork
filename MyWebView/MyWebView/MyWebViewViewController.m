//
//  MyWebViewViewController.m
//  MyWebView
//
//  Created by zdc on 2014/12/09.
//  Copyright (c) 2014年 simul. All rights reserved.
//

#import "MyWebViewViewController.h"

@interface MyWebViewViewController ()

@property (weak, nonatomic) IBOutlet UIButton *goBtn;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@end

@implementation MyWebViewViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)goToUrl:(id)sender {
    NSString *strUrl = self.textField.text;
    NSLog(@"input url : %@", strUrl);
    if(![strUrl hasPrefix:@"*://"]) {
        strUrl = [@"http://" stringByAppendingString:strUrl];
    }
    NSURL *url = [NSURL URLWithString:strUrl];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [self.webView loadRequest:request];
    
}

@end
