//
//  CoreMediaFuncManagerVC.m
//  CoreMediaFuncManagerVC
//
//  Created by muxi on 15/3/11.
//  Copyright (c) 2015年 muxi. All rights reserved.
//

#import "CoreMediaFuncManagerVC.h"

@interface CoreMediaFuncManagerVC ()


/**
 *  webView
 */
@property (nonatomic,strong) UIWebView *webView;



@end

@implementation CoreMediaFuncManagerVC


- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _webView=[[UIWebView alloc] init];
        
    }
    return self;
}



-(void)viewDidDisappear:(BOOL)animated{
    
    [super viewDidDisappear:animated];
    
    [self removeFromParentViewController];
}







/**
 *  打电话
 *
 *  @param no                   电话号码
 *  @param inViewController     需要打电话的控制器
 */
+(void)call:(NSString *)no inViewController:(UIViewController *)vc failBlock:(void(^)())failBlock{
    
    //拨打电话
    NSURL *url=[NSURL URLWithString:[NSString stringWithFormat:@"tel://%@",no]];
    
    BOOL canOpen = [[UIApplication sharedApplication] canOpenURL:url];
    
    if(!canOpen){//不能打开
        if(failBlock!=nil) failBlock(); return;
    }
    
    CoreMediaFuncManagerVC *mediaVC=[[CoreMediaFuncManagerVC alloc] init];
    
    [vc addChildViewController:mediaVC];
    
    mediaVC.view.frame=CGRectZero;
    mediaVC.view.alpha=.0f;
    
    [vc.view addSubview:mediaVC.view];
    
    //打电话
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    
    [mediaVC.webView loadRequest:request];
}



-(void)dealloc{
    
    self.webView=nil;
    
    NSLog(@"CoreMediaFuncManagerVC被释放");
}













@end
