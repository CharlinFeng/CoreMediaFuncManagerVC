//
//  CoreMediaFuncManagerVC.h
//  CoreMediaFuncManagerVC
//
//  Created by muxi on 15/3/11.
//  Copyright (c) 2015年 muxi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CoreMediaFuncManagerVC : UIViewController


/**
 *  打电话
 *
 *  @param no                   电话号码
 *  @param inViewController     需要打电话的控制器
 */
+(void)call:(NSString *)no inViewController:(UIViewController *)vc failBlock:(void(^)())failBlock;


@end
