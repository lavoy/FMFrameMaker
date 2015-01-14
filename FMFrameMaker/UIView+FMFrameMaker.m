//
//  UIView+FMFrameMaker.m
//  FMFrameMaker
//
//  Created by Andy LaVoy on 12/31/14.
//  Copyright (c) 2014 Andy LaVoy. All rights reserved.
//

#import "UIView+FMFrameMaker.h"
#import "FMFrameMaker.h"

@implementation UIView (FMFrameMaker)

- (void)fm_makeFrame:(void(^)(FMFrameMaker *frameMaker))block {
    FMFrameMaker *frameMaker = [[FMFrameMaker alloc] initWithView:self];
    block(frameMaker);
    [frameMaker install];
}

@end
