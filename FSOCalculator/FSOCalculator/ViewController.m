//
//  ViewController.m
//  FSOCalculator
//
//  Created by Ryan Faerman on 6/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "InfoController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  
  // Initialize our state variables
  total = operand = 0;
  active = YES;
  informationPane = [[InfoController alloc] initWithNibName:@"InfoController" bundle:nil];
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
  if (active) {
    operand = button.tag;
    resultDisplay.text = [[NSString alloc] initWithFormat:@"%d", operand];
  }
  
}

-(IBAction)onMetaKey:(id)sender
{
  UIButton *button = (UIButton*) sender;
  switch (button.tag) {

    case 0: // clear
      NSLog(@"Clear!");
      if (active) {
        total = operand = 0;
        resultDisplay.text = @"";
      }
      
      break;
    case 1: // plus
      NSLog(@"Plus!");
      if (active) {
        total = total + operand;
        operand = 0;
        resultDisplay.text = [[NSString alloc] initWithFormat:@"%d", total];
      }
      break;
    case 2: // equals
      NSLog(@"Equals!");
      if (active) {
        total = total + operand;
        resultDisplay.text = [[NSString alloc] initWithFormat:@"%d", total];
      }
      break;
    case 3: // info
      NSLog(@"Info!");
      [self presentModalViewController:informationPane animated:YES];
      break;
    case 4: // close
      NSLog(@"Close!");
      break;
    case 5: // switch
      NSLog(@"Switch!");
      active = !active;
      if (active) {
        total = operand = 0;
        resultDisplay.text = @"";
      }
      break;
    default:
      // do nothing
      break;
  }
}
-(IBAction)onColorChoice:(id)sender
{
  UISegmentedControl *segment = (UISegmentedControl*) sender;
  switch (segment.selectedSegmentIndex) {
    case 0: // white
      self.view.backgroundColor = [UIColor whiteColor];
      break;
    case 1: // blue
      self.view.backgroundColor = [UIColor blueColor];
      break;
    case 2: // green
      self.view.backgroundColor = [UIColor greenColor];
      break;
    default:
      // do nothing
      break;
  }
}

@end
