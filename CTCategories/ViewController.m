//
//  ViewController.m
//  CTCategories
//
//  Created by test－mac on 2018/8/10.
//  Copyright © 2018年 FK. All rights reserved.
//

#import "ViewController.h"
#import <A_Category/CTMediator+A.h>
#import <ReactiveCocoa/ReactiveCocoa.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 100, 100);
    button.backgroundColor = [UIColor blackColor];
    [[button rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(id x) {
        UIViewController *viewController = [[CTMediator sharedInstance] A_ViewController];
        UINavigationController * nav = [[UINavigationController alloc]initWithRootViewController:viewController];
        [self presentViewController:nav animated:YES completion:nil];
    }];
    [self.view addSubview:button];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
