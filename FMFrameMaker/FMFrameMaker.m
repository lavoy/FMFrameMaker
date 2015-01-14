//
//  FMFrameMaker.m
//  FrameMaker
//
//  Created by Andy LaVoy on 12/31/14.
//  Copyright (c) 2014 Andy LaVoy. All rights reserved.
//

#import "FMFrameMaker.h"

@interface FMFrameMaker ()

@property (nonatomic, weak) UIView *view;

@property (nonatomic, assign) BOOL hasOrigin;
@property (nonatomic, assign) BOOL hasSize;

@property (nonatomic, assign) BOOL hasLeft;
@property (nonatomic, assign) BOOL hasRight;
@property (nonatomic, assign) BOOL hasTop;
@property (nonatomic, assign) BOOL hasBottom;

@property (nonatomic, assign) BOOL hasWidth;
@property (nonatomic, assign) BOOL hasHeight;

@property (nonatomic, assign) BOOL hasHorizontalOffset;
@property (nonatomic, assign) BOOL hasVerticalOffset;

@property (nonatomic, assign) BOOL hasSizeToFit;
@property (nonatomic, assign) BOOL hasSizeThatFitsSize;

@property (nonatomic, assign) BOOL hasCenteredVertically;
@property (nonatomic, assign) BOOL hasCenteredHorizontally;
@property (nonatomic, assign) BOOL hasCentered;

@end

@implementation FMFrameMaker

- (instancetype)initWithView:(UIView *)view {
    if (self = [super init]) {
        _view = view;
    }
    
    return self;
}

- (void)install {
    CGPoint origin;
    CGSize size;
    
    
    if (self.hasSize) { // set the size outright
        size = self.size;
    } else if (self.hasSizeToFit) {
        size = [self.view sizeThatFits:CGSizeMake(CGFLOAT_MAX, CGFLOAT_MAX)];
    } else if (self.hasSizeThatFitsSize) {
        size = [self.view sizeThatFits:self.sizeThatFitsSize];
    } else {
        if (self.hasWidth) {    // set the width outright
            size.width = self.width;
        } else if (self.hasLeft && self.hasRight) { // set the left and right edges
            CGFloat offsetWidth = self.left + self.right;
            size.width = self.view.superview.bounds.size.width - offsetWidth;
        } else {
            size.width = self.view.frame.size.width;
        }
        
        if (self.hasHeight) {   // set the height outright
            size.height = self.height;
        } else if (self.hasTop && self.hasBottom) { // set the top and bottom edges
            CGFloat offsetHeight = self.top + self.bottom;
            size.height = self.view.superview.bounds.size.height - offsetHeight;
        } else {
            size.height = self.view.frame.size.height;
        }
    }
    
    
    if (self.hasOrigin) {   // set the origin outright
        origin = self.origin;
    } else {
        if (self.hasLeft) { // set the x outright
            origin.x = self.left;
        } else if (self.hasRight) { // set the x from the right
            origin.x = self.view.superview.bounds.size.width - size.width - self.right;
        } else if (self.centeredHorizontally || self.centered) {    // centered horizontally
            origin.x = (self.view.superview.bounds.size.width / 2.0) - (size.width / 2.0);
        } else {
            origin.x = self.view.frame.origin.x;
        }
        
        if (self.hasTop) {  // set the y outright
            origin.y = self.top;
        } else if (self.hasBottom) {    // set the y from the bottom
            origin.y = self.view.superview.bounds.size.height - size.height - self.bottom;
        } else if (self.centeredVertically || self.centered) {      // centered vertically
            origin.y = (self.view.superview.bounds.size.height / 2.0) - (size.height / 2.0);
        } else {
            origin.y = self.view.frame.origin.y;
        }
    }
    
    
    if (self.hasHorizontalOffset) {
        origin.x += self.horizontalOffset;
    }
    
    if (self.hasVerticalOffset) {
        origin.y += self.verticalOffset;
    }
    
    
    self.view.frame = CGRectMake(origin.x, origin.y, size.width, size.height);
}

#pragma mark - Setters

- (void)setOrigin:(CGPoint)origin {
    _origin = origin;
    _hasOrigin = YES;
}

- (void)setSize:(CGSize)size {
    _size = size;
    _hasSize = YES;
}

- (void)setLeft:(CGFloat)left {
    _left = left;
    _hasLeft = YES;
}

- (void)setRight:(CGFloat)right {
    _right = right;
    _hasRight = YES;
}

- (void)setTop:(CGFloat)top {
    _top = top;
    _hasTop = YES;
}

- (void)setBottom:(CGFloat)bottom {
    _bottom = bottom;
    _hasBottom = YES;
}

- (void)setWidth:(CGFloat)width {
    _width = width;
    _hasWidth = YES;
}

- (void)setHeight:(CGFloat)height {
    _height = height;
    _hasHeight = YES;
}

- (void)setHorizontalOffset:(CGFloat)horizontalOffset {
    _horizontalOffset = horizontalOffset;
    _hasHorizontalOffset = YES;
}

- (void)setVerticalOffset:(CGFloat)verticalOffset {
    _verticalOffset = verticalOffset;
    _hasVerticalOffset = YES;
}

- (void)setSizeToFit:(BOOL)sizeToFit {
    _sizeToFit = sizeToFit;
    _hasSizeToFit = sizeToFit;
}

- (void)setSizeThatFitsSize:(CGSize)sizeThatFitsSize {
    _sizeThatFitsSize = sizeThatFitsSize;
    _hasSizeThatFitsSize = YES;
}

- (void)setCenteredVertically:(BOOL)centeredVertically {
    _centeredVertically = centeredVertically;
    _hasCenteredVertically = centeredVertically;
}

- (void)setCenteredHorizontally:(BOOL)centeredHorizontally {
    _centeredHorizontally = centeredHorizontally;
    _hasCenteredHorizontally = centeredHorizontally;
}

- (void)setCentered:(BOOL)centered {
    _centered = centered;
    _hasCentered = centered;
}

@end
