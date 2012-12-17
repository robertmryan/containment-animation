//
//  ViewController.h
//  Containment Animation Test
//
//  Created by Robert Ryan on 12/16/12.
//  Copyright (c) 2012 Robert Ryan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

@property (weak, nonatomic) IBOutlet UIView *topContainerView;
@property (weak, nonatomic) IBOutlet UIView *bottomContainerView;
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (weak, nonatomic) IBOutlet UISlider *slider;

- (IBAction)changedSegmentedControl:(id)sender;

@end
