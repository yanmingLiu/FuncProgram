//
//  Person.h
//  函数式编程
//
//  Created by yons on 17/2/17.
//  Copyright © 2017年 yons. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

/**
 * 1.初级写法，一般我们给类添加的方法
 */
- (void)run1;
- (void)eat1;


/**
 * 2.链式编程 调用方法编程, 
 *   调用方式为 [[p run2] ert2]
 *   可以发现还是用对象去调用方法，那么就需要一个对象的返回值 而不是void
 */
- (Person *)run2;
- (Person *)eat2;

/**
 * 3.函数式编程
 *   调用方式为 p.run3().eat3()
 *   可以发现这种方式为对象直接链式调用p.run3().eat3()
 *   OC中在执行block的时候需要'()'
 *
 */

// 不带参数
- (Person * (^)())run3;
- (Person * (^)())eat3;

// 带参数的block
- (Person * (^)(NSString *str))run4;
- (Person * (^)(NSString *str))eat4;

@end
