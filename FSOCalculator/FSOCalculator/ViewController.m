//
//  ViewController.m
//  FSOCalculator
//
//  Created by Ryan Faerman on 6/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  
  // Initialize our state variables
  total = operand = 0;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

-(IBAction)onNumberKey:(id)sender
{
  UIButton *button = (UIButton*) sender;
  operand = button.tag;
  resultDisplay.text = [[NSString alloc] initWithFormat:@"%d", operand];
}

-(IBAction)onMetaKey:(id)sender
{
  UIButton *button = (UIButton*) sender;
  switch (button.tag) {

    case 0: // clear
      NSLog(@"Clear!");
      total = operand = 0;
      resultDisplay.text = @"";
      break;
    case 1: // plus
      NSLog(@"Plus!");
      total = total + operand;
      operand = 0;
      resultDisplay.text = [[NSString alloc] initWithFormat:@"%d", total];
      break;
    case 2: // equals
      NSLog(@"Equals!");
      total = total + operand;
      resultDisplay.text = [[NSString alloc] initWithFormat:@"%d", total];
      break;
    case 3: // info
      NSLog(@"Info!");
      break;
    case 4: // close
      NSLog(@"Close!");
      break;
    case 5: // switch
      NSLog(@"Switch!");
      break;
    default:
      break;
  }
}
-(IBAction)onColorChoice:(id)sender
{
  
}

@end
