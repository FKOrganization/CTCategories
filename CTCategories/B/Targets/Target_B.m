//
//  Target_B.m
//  CTCategories
//
//  Created by test－mac on 2018/8/10.
//  Copyright © 2018年 FK. All rights reserved.
//

#import "Target_B.h"
#import "BViewController.h"

@interface Target_B()

@end

@implementation Target_B

- (UIViewController *)Action_viewController:(NSDictionary *)params
{
    NSString *contentText = params[@"contentText"];
    id wself = params[@"self"];
    id block = params[@"block"];
    BViewController *viewController = [[BViewController alloc] initWithContentText:contentText blcok:block];
    viewController.delegate = wself;
    return viewController;
}

@end
