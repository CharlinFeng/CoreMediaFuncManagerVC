//
//  ViewController.m
//  CoreMediaFuncManagerVC
//
//  Created by muxi on 15/3/11.
//  Copyright (c) 2015年 muxi. All rights reserved.
//

#import "ViewController.h"
#import "CoreMediaFuncManagerVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


-(void)viewDidDisappear:(BOOL)animated{
    
    [super viewDidDisappear:animated];
    
    NSLog(@"ViewController-viewDidDisappear");
}


-(void)viewWillDisappear:(BOOL)animated{
    
    [super viewWillDisappear:animated];
    
    NSLog(@"ViewController-viewWillDisappear");
}

- (IBAction)call:(id)sender {
    [CoreMediaFuncManagerVC call:@"10086" inViewController:self failBlock:^{
        NSLog(@"不能打");
    }];
}





@end
