//
//  StoogeViewController.m
//  Animation with Containment
//
//  Created by Robert Ryan on 12/16/12.
//  Copyright (c) 2012 Robert Ryan. All rights reserved.
//

#import "StoogeViewController.h"
#import "ViewController.h"

@interface StoogeViewController ()

@property (nonatomic, strong) NSArray *objects;

@end

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

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.objects count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    NSDictionary *object = self.objects[indexPath.row];
    cell.textLabel.text = object[@"text"];
    cell.detailTextLabel.text = object[@"detail"];
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSDictionary *object = self.objects[indexPath.row];
    
    ViewController *parent = (ViewController *)self.parentViewController;

    [UIView transitionWithView:parent.topContainerView
                      duration:2.0
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                        parent.label1.text = object[@"text"];
                        parent.label2.text = object[@"detail"];
                    }
                    completion:nil];
}

@end
