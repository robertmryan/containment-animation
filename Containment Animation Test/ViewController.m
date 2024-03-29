//
//  ViewController.m
//  Animation with Containment
//
//  Created by Robert Ryan on 12/16/12.
//  Copyright (c) 2012 Robert Ryan. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()

@property (nonatomic) NSInteger currentController;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.currentController = 0;
    
    self.bottomContainerView.layer.borderColor = [UIColor blackColor].CGColor;
    self.bottomContainerView.layer.borderWidth = 1.0;
    
    self.topContainerView.layer.borderColor = [UIColor blackColor].CGColor;
    self.topContainerView.layer.borderWidth = 1.0;
    self.topContainerView.layer.shadowColor = [UIColor blackColor].CGColor;
    self.topContainerView.layer.shadowOffset = CGSizeMake(2.0, 2.0);
    self.topContainerView.layer.shadowRadius = 3.0;
    self.topContainerView.layer.shadowOpacity = 0.5;
    
    [self addFirstChild];
}

- (void)addFirstChild
{
    UIViewController *child = [self.storyboard instantiateViewControllerWithIdentifier:@"Stooge"];
    [self addChildViewController:child];
    
    child.view.frame = self.bottomContainerView.bounds;
    [self.bottomContainerView addSubview:child.view];
    
    [child didMoveToParentViewController:self];
}

- (void)changedChild
{
    UIViewController *oldController = [self.childViewControllers lastObject];
    UIViewController *newController;
    
    self.currentController = self.segmentedControl.selectedSegmentIndex;
    
    if (self.segmentedControl.selectedSegmentIndex == 0)
        newController = [self.storyboard instantiateViewControllerWithIdentifier:@"Stooge"];
    else
        newController = [self.storyboard instantiateViewControllerWithIdentifier:@"Marx"];
    
    [oldController willMoveToParentViewController:nil];
    [self addChildViewController:newController];
    
    // start off screen below
    
    CGRect startFrame = self.bottomContainerView.bounds;
    startFrame.origin.y += startFrame.size.height;
    
    // end up where it's supposed to be, right in the container
    
    newController.view.frame = startFrame;
    
    [self transitionFromViewController:oldController
                      toViewController:newController
                              duration:1.0
                               options:0
                            animations:^{
                                newController.view.frame = self.bottomContainerView.bounds;
                            }
                            completion:^(BOOL finished) {
                                [oldController removeFromParentViewController];
                                [newController didMoveToParentViewController:self];
                            }];
    
}

- (void)swapChild
{
    // I don't need to animate the changing of the switch, but if we're showing simultaneous animations, why not
    
    [UIView transitionWithView:self.segmentedControl
                      duration:1.0
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{
                        if (self.currentController == 0)
                            [self.segmentedControl setSelectedSegmentIndex:1];
                        else
                            [self.segmentedControl setSelectedSegmentIndex:0];
                    }
                    completion:nil];
    
    [self changedChild];
}

- (IBAction)changedSegmentedControl:(id)sender
{
    [self changedChild];
}

@end
