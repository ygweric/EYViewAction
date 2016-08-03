//
//  UIView+EYAction.m
//
//  Created by ericyang on 8/11/15.
//  Copyright (c) 2015 Eric Yang. All rights reserved.
//

#import "UIView+EYAction.h"
#import <objc/runtime.h>

static NSString *kHandlerAssociatedKey_selector = @"kHandlerAssociatedKey_selector";
static NSString *kHandlerAssociatedKey_target = @"kHandlerAssociatedKey_target";

@implementation UIView (EYAction)

- (void)addTarget:(id)target action:(SEL)action {
    NSValue *selectorValue = [NSValue valueWithBytes:&action  objCType:@encode(SEL)];
    objc_setAssociatedObject(self, (__bridge const void *)(kHandlerAssociatedKey_selector),selectorValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, (__bridge const void *)(kHandlerAssociatedKey_target),target, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handlerTapGesture:)];
    tapGesture.numberOfTapsRequired=1;
    [self addGestureRecognizer:tapGesture];
    self.userInteractionEnabled=YES;
}

-(void)handlerTapGesture:(UIGestureRecognizer*)gesture {
    NSValue* selectorValue = objc_getAssociatedObject(self, (__bridge const void *)(kHandlerAssociatedKey_selector));
    SEL action=selectorValue.pointerValue;
    id target=objc_getAssociatedObject(self, (__bridge const void *)(kHandlerAssociatedKey_target));
    
    #pragma clang diagnostic push
    #pragma clang diagnostic ignored "-Warc-performSelector-leaks"
    [target performSelector:action withObject:self];
    #pragma clang diagnostic pop
}

@end
