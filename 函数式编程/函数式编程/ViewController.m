//
//  ViewController.m
//  函数式编程
//
//  Created by yons on 17/2/17.
//  Copyright © 2017年 yons. All rights reserved.
//

#import "ViewController.h"

#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person *p = [[Person alloc] init];
    
    // 1.第一种写法调用函数，使用对象分别调用方法
    [p run1];
    [p eat1];
    
    // 2.链式编程
    [[p run2] eat2];
    
    // 3.函数式编程
    p.run3().eat3();
    
    p.run4(@"皇后大道东").eat4(@"吃包子");
}




@end
