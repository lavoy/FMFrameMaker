//
//  FMFrameMaker.h
//  FrameMaker
//
//  Created by Andy LaVoy on 12/31/14.
//  Copyright (c) 2014 Andy LaVoy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import <UIKit/UIKit.h>
#import "UIView+FMFrameMaker.h"

@interface FMFrameMaker : NSObject

@property (nonatomic, assign) CGPoint origin;
@property (nonatomic, assign) CGSize size;

@property (nonatomic, assign) CGFloat left;
@property (nonatomic, assign) CGFloat right;
@property (nonatomic, assign) CGFloat top;
@property (nonatomic, assign) CGFloat bottom;

@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;

@property (nonatomic, assign) CGFloat horizontalOffset;
@property (nonatomic, assign) CGFloat verticalOffset;

@property (nonatomic, assign) BOOL centeredVertically;
@property (nonatomic, assign) BOOL centeredHorizontally;
@property (nonatomic, assign) BOOL centered;

- (instancetype)initWithView:(UIView *)view;
- (void)install;

@end
