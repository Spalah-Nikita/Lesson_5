//
//  ViewController.m
//  Lesson_5
//
//  Created by Nikita Vintonovich on 8/22/17.
//  Copyright © 2017 Vint-Rock. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *firstView;
@property (weak, nonatomic) IBOutlet UIView *secondView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}
- (IBAction)changeColorButtonAction:(id)sender
{
    self.firstView.backgroundColor = [self randomColor];
    self.secondView.backgroundColor = [self randomColor];
}

- (UIColor*)randomColor
{
    return [UIColor colorWithRed:[self randomChanalValue] green:[self randomChanalValue] blue:[self randomChanalValue] alpha:1.0f];
}

- (CGFloat)randomChanalValue
{
    return (arc4random() % 101) / 100.0f;
}

@end
