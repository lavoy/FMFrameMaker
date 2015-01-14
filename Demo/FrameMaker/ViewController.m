//
//  ViewController.m
//  FrameMaker
//
//  Created by Andy LaVoy on 12/31/14.
//  Copyright (c) 2014 Andy LaVoy. All rights reserved.
//

#import "ViewController.h"
#import "FMFrameMaker.h"

@interface ViewController ()

@property (nonatomic, strong) UIView *subview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.subview = [[UIView alloc] init];
    self.subview.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:self.subview];
}

- (void)viewDidLayoutSubviews {
    // set the frame using size/origin
//    [self.subview fm_makeFrame:^(FMFrameMaker *frameMaker) {
//        frameMaker.size = CGSizeMake(100, 100);
//        frameMaker.origin = CGPointMake(100, 100);
//    }];
    
    // set the frame using size and right/bottom
//    [self.subview fm_makeFrame:^(FMFrameMaker *frameMaker) {
//        frameMaker.size = CGSizeMake(100, 100);
//        frameMaker.bottom = 10;
//        frameMaker.right = 10;
//    }];
    
    // set the frame using left/right
//    [self.subview fm_makeFrame:^(FMFrameMaker *frameMaker) {
//        frameMaker.left = 10;
//        frameMaker.top = 10;
//        frameMaker.width = 100;
//        frameMaker.height = 100;
//    }];
    
    // set the fame using edges
//    [self.subview fm_makeFrame:^(FMFrameMaker *frameMaker) {
//        frameMaker.left = 10;
//        frameMaker.top = 10;
//        frameMaker.right = 10;
//        frameMaker.bottom = 10;
//    }];
    
    // set the frame using edge insets
    [self.subview fm_makeFrame:^(FMFrameMaker *frameMaker) {
        frameMaker.size = CGSizeMake(100, 100);
        frameMaker.horizontalOffset = 20;
        frameMaker.verticalOffset = 20;
    }];
    
    // set the frame using edges and height
//    [self.subview fm_makeFrame:^(FMFrameMaker *frameMaker) {
//        frameMaker.left = 10;
//        frameMaker.right = 10;
//        frameMaker.height = 100;
//        frameMaker.top = 20 + 10;
//    }];
    
    // set the frame by centering vertically/horizontally
//    [self.subview fm_makeFrame:^(FMFrameMaker *frameMaker) {
//        frameMaker.size = CGSizeMake(100, 100);
//        frameMaker.centeredVertically = YES;
//        frameMaker.centeredHorizontally = YES;
//    }];
    
    // set the frame by centering
//    [self.subview fm_makeFrame:^(FMFrameMaker *frameMaker) {
//        frameMaker.width = 200;
//        frameMaker.height = 200;
//        frameMaker.centered = YES;
//    }];
    
    // set the frame by centering vertically and using L/R edges
//    [self.subview fm_makeFrame:^(FMFrameMaker *frameMaker) {
//        frameMaker.height = 200;
//        frameMaker.left = 120;
//        frameMaker.right = 40;
//        frameMaker.centeredVertically = YES;
//    }];
}

@end
