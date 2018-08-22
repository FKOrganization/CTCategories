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
#import <objc/runtime.h>

@interface ViewController ()
@property (nonatomic ,readwrite, strong) NSArray *array;

@end

@implementation ViewController
//{
//    NSArray * _array;
//}
@synthesize array = _array;

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
    
    NSArray *array = @[ @1, @2, @3, @4 ];
    NSMutableArray *mutableArray = [NSMutableArray arrayWithArray:array];
    
    self.array = array;
    [mutableArray removeAllObjects];
    [self setArray:array];
    NSLog(@"%@",self.array);

//    [mutableArray addObjectsFromArray:array];
//    self.array = [mutableArray copy];
//    [mutableArray removeAllObjects];;
//    NSLog(@"%@",self.array);
    
//    IMP set = class_getMethodImplementation([self class], @selector(setArray:));
    unsigned int a = 0;
    Method * methods = class_copyMethodList(object_getClass(self), &a);
    
    Method * method = &methods[0];
    SEL methodSEL = method_getName(*method);
    NSInvocation * invocation = [[NSInvocation alloc]init];
    [invocation setSelector:methodSEL];
    [invocation setTarget:self];
    [invocation invoke];
    
    for (int i = 0; i < a; i ++) {
        Method * method = &methods[i];
        SEL methodSEL = method_getName(*method);
        const char * selName = sel_getName(methodSEL);
        NSLog(@"%s",selName);
    }
//    NSMethodSignature * sig =
//    NSInvocation * inv = [NSInvocation invocationWithMethodSignature:<#(nonnull NSMethodSignature *)#>]
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSArray *)array
{
    if (!_array) {
        _array = [NSArray array];
    }
    return _array;
}

- (void)setArray:(NSArray *)array
{
    _array = array;
}

@end
