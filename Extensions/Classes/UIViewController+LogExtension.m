//
//  UIViewController+LogExtension.m
//  Extensions
//
//  Created by Logic on 2019/11/20.
//

#import "UIViewController+LogExtension.h"
#import <objc/runtime.h>

@implementation UIViewController (LogExtension)

#ifdef DEBUG
+ (void)load {
    Method m1 = class_getInstanceMethod(self, @selector(viewWillAppear:));
    Method m2 = class_getInstanceMethod(self, @selector(ex_viewWillAppear:));
    method_exchangeImplementations(m1, m2);
    
    Method m3 = class_getInstanceMethod(self, @selector(viewDidDisappear:));
    Method m4 = class_getInstanceMethod(self, @selector(ex_viewDidDisappear:));
    method_exchangeImplementations(m3, m4);
}

- (void)ex_viewWillAppear:(BOOL)animated {
    [self ex_viewWillAppear:animated];
    NSLog(@"%@ viewWillAppear", self);
}

- (void)ex_viewDidDisappear:(BOOL)animated {
    [self ex_viewDidDisappear:animated];
    NSLog(@"%@ viewDidDisappear", self);
}

#endif

@end
