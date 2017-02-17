//
//  Person.m
//  函数式编程
//
//  Created by yons on 17/2/17.
//  Copyright © 2017年 yons. All rights reserved.
//

#import "Person.h"

@implementation Person


/**
 * 1.初级写法，一般我们给类添加的方法
 */
- (void)run1 {
    NSLog(@"------run");
}

- (void)eat1 {
    NSLog(@"------eat");
}

/**
 * 2.链式编程
 */
- (Person *)run2 {
    NSLog(@"------run2");
    return self;
}

- (Person *)eat2 {
    NSLog(@"------eat2");
    return self;
}


/**
 * 2.函数式编程
 */
- (Person *(^)())run3 {
    return ^() {
        NSLog(@"------run3");
        return self;
    };
}

- (Person *(^)())eat3 {
    return ^() {
        NSLog(@"------eat3");
        return self;
    };
}

- (Person *(^)(NSString *))run4 {
    return ^(NSString *str) {
        NSLog(@"run4--%@", str);
        return self;
    };
}

- (Person *(^)(NSString *))eat4 {
    return ^(NSString *str) {
        NSLog(@"eat4--%@", str);
        return self;
    };
}

@end
