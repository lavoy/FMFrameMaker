//
//  UIView+FMFrameMaker.h
//  FMFrameMaker
//
//  Created by Andy LaVoy on 12/31/14.
//  Copyright (c) 2014 Andy LaVoy. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FMFrameMaker;

@interface UIView (FMFrameMaker)

- (void)fm_makeFrame:(void(^)(FMFrameMaker *frameMaker))block;

@end
