//
//  BViewController.h
//  CTCategories
//
//  Created by test－mac on 2018/8/10.
//  Copyright © 2018年 FK. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol BViewControllerDelegate <NSObject>

- (NSString *)getBViewControllerTitle;

@end

@interface BViewController : UIViewController

- (instancetype)initWithContentText:(NSString *)text blcok:(void(^)(void))block;

@property (nonatomic , weak)id<BViewControllerDelegate> delegate;

@end
