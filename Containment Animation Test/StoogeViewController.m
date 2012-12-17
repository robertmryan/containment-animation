//
//  StoogeViewController.m
//  Animation with Containment
//
//  Created by Robert Ryan on 12/16/12.
//  Copyright (c) 2012 Robert Ryan. All rights reserved.
//

#import "StoogeViewController.h"

@implementation StoogeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.objects = @[
        @{@"text":@"Moses Harry Horwitz", @"detail":@"Moe Howard"},
        @{@"text":@"Louis Feinberg", @"detail":@"Larry Fine"},
        @{@"text":@"Jerome Lester Horwitz", @"detail":@"Curly Howard"}
    ];
}

@end
