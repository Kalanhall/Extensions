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
    Method m1 = class_getInstanceMethod(self, @selector(viewDidLoad));
    Method m2 = class_getInstanceMethod(self, @selector(ex_viewDidLoad));
    method_exchangeImplementations(m1, m2);
}

- (void)ex_viewDidLoad {
    [self ex_viewDidLoad];
    
    NSLog(@"%@ viewDidLoad", self);
}

- (void)dealloc {
    NSLog(@"%@ dealloc", self);
}
#endif

@end
