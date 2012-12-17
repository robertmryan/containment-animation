//
//  MarxViewController.m
//  Animation with Containment
//
//  Created by Robert Ryan on 12/16/12.
//  Copyright (c) 2012 Robert Ryan. All rights reserved.
//

#import "MarxViewController.h"

@implementation MarxViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.objects = @[
        @{@"text":@"Leonard Marx", @"detail":@"Chico"},
        @{@"text":@"Adolph Marx", @"detail":@"Harpo"},
        @{@"text":@"Julius Henry Marx", @"detail":@"Groucho"},
        @{@"text":@"Herbert Manfred Marx", @"detail":@"Zeppo"}
    ];
}

@end
