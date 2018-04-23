//
//  ViewController.m
//  MinShengHuHui
//
//  Created by liangliang.zhu on 2018/4/23.
//  Copyright © 2018年 meta-insight.com. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>

@interface ViewController ()

@property (nonatomic, strong) UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    self.scrollView.contentSize = CGSizeMake(SCREEN_WIDTH*3, SCREEN_HEIGHT);
    self.scrollView.pagingEnabled = YES;
    self.scrollView.showsHorizontalScrollIndicator = NO;
    [self.view addSubview:self.scrollView];
    
    NSString *jScript = @"var meta = document.createElement('meta'); meta.setAttribute('name', 'viewport'); meta.setAttribute('content', 'width=device-width'); document.getElementsByTagName('head')[0].appendChild(meta);";
    
    WKUserScript *wkUScript = [[WKUserScript alloc] initWithSource:jScript injectionTime:WKUserScriptInjectionTimeAtDocumentEnd forMainFrameOnly:YES];
    WKUserContentController *wkUController = [[WKUserContentController alloc] init];
    [wkUController addUserScript:wkUScript];
    
    WKWebViewConfiguration *wkWebConfig = [[WKWebViewConfiguration alloc] init];
    wkWebConfig.userContentController = wkUController;
    
    UIWebView *webView1 = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    NSURL *filePath1 = [[NSBundle mainBundle] URLForResource:@"index" withExtension:@"html"];
    [webView1 loadRequest:[NSURLRequest requestWithURL:filePath1]];
    [self.scrollView addSubview:webView1];
    
    UIWebView *webView2 = [[UIWebView alloc] initWithFrame:CGRectMake(SCREEN_WIDTH, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    NSURL *filePath2 = [[NSBundle mainBundle] URLForResource:@"weekMeet.html" withExtension:nil];
    [webView2 loadRequest:[NSURLRequest requestWithURL:filePath2]];
    [self.scrollView addSubview:webView2];

    UIWebView *webView3 = [[UIWebView alloc] initWithFrame:CGRectMake(SCREEN_WIDTH*2, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    NSURL *filePath3 = [[NSBundle mainBundle] URLForResource:@"meet.html" withExtension:nil];
    [webView3 loadRequest:[NSURLRequest requestWithURL:filePath3]];
    [self.scrollView addSubview:webView3];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
