//
//  UIViewController+BackGroundColor.m
//  CTCategories
//
//  Created by test－mac on 2018/8/10.
//  Copyright © 2018年 FK. All rights reserved.
//

#import "UIViewController+BackGroundColor.h"
#import <objc/runtime.h>

@implementation UIViewController (BackGroundColor)

+ (void)load
{
    Method viewDidLoad = class_getClassMethod(self, @selector(viewDidLoad));
    Method viewDidLoadBcakColor = class_getClassMethod(self, @selector(viewDidLoadBcakColor));

    method_exchangeImplementations(viewDidLoad, viewDidLoadBcakColor);
    
//    IMP imp1 = method_getImplementation(viewDidLoad);
//    IMP imp2 = method_getImplementation(viewDidLoadBcakColor);
//    method_setImplementation(viewDidLoad, imp2);
//    method_setImplementation(viewDidLoadBcakColor, imp1);
    
}

- (void)viewDidLoadBcakColor
{
    self.view.backgroundColor = [UIColor whiteColor];
    [self viewDidLoadBcakColor];
}

@end
