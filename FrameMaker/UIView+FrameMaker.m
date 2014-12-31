//
//  UIView+FrameMaker.m
//  FrameMaker
//
//  Created by Andy LaVoy on 12/31/14.
//  Copyright (c) 2014 Andy LaVoy. All rights reserved.
//

#import "UIView+FrameMaker.h"
#import "FMFrameMaker.h"

@implementation UIView (FrameMaker)

- (void)fm_makeFrame:(void(^)(FMFrameMaker *frameMaker))block {
    FMFrameMaker *frameMaker = [[FMFrameMaker alloc] initWithView:self];
    block(frameMaker);
    [frameMaker install];
}

@end
