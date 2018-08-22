//
//  BViewController.m
//  CTCategories
//
//  Created by test－mac on 2018/8/10.
//  Copyright © 2018年 FK. All rights reserved.
//

#import "BViewController.h"

typedef void(^Bblock)(void);

@interface BViewController ()

@property (nonatomic , copy)Bblock block;

@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (instancetype)initWithContentText:(NSString *)text blcok:(void(^)(void))block
{
    self = [super init];
    if (self) {
        self.title = text;
        self.block = block;
    }
    return self;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    if ([self.delegate respondsToSelector:@selector(getBViewControllerTitle)]) {
        self.title = [self.delegate getBViewControllerTitle];
    }
    if (self.block) {
        self.block();
    }
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
