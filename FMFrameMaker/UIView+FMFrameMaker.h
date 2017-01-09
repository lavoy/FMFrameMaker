//
//  UIView+FMFrameMaker.h
//  FMFrameMaker
//
//  Created by Andy LaVoy on 12/31/14.
//  Copyright (c) 2014 Andy LaVoy. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class FMFrameMaker;

@interface UIView (FMFrameMaker)

- (void)makeFrame:(void(^)(FMFrameMaker *frameMaker))block;

NS_ASSUME_NONNULL_END

@end
