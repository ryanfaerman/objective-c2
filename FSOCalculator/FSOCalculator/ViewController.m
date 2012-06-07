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

// Handle number presses
-(IBAction)onNumberKey:(id)sender
{
  UIButton *button = (UIButton*) sender;
  if (button != nil) {
    if (active) {
      // This lets us handle multi-digit numbers
      if (operand > 0) {
        // shift operand up an order of 
        // magnitude and update the "ones" column
        operand = operand * 10 + button.tag;
      } else {
        // we have only a "ones" column here
        operand = button.tag;
      }
      
      // update the display with the new operand
      resultDisplay.text = [[NSString alloc] initWithFormat:@"%d", operand];
    }
  } // end if
  
}

// handle action buttons
-(IBAction)onMetaKey:(id)sender
{
  UIButton *button = (UIButton*) sender;
  if (button != nil) {
    switch (button.tag) {
        
      case 0: // clear
        if (active) {
          total = operand = 0;
          resultDisplay.text = @"";
        }
        break;
      case 1: // plus
        if (active) {
          total = total + operand;
          operand = 0;
          resultDisplay.text = [[NSString alloc] initWithFormat:@"%d", total];
        }
        break;
      case 2: // equals
        if (active) {
          total = total + operand;
          resultDisplay.text = [[NSString alloc] initWithFormat:@"%d", total];
        }
        break;
      case 3: // info
        [self presentModalViewController:informationPane animated:YES];
        break;
      case 5: // switch
        active = !active; // toggle the active state
        if (active) {
          total = operand = 0; // reset our total and operand
          resultDisplay.text = @""; // clear the display
        }
        break;
      default:
        // do nothing
        break;
    }// end switch
  }// end if
  
}

// Handle a color selection
-(IBAction)onColorChoice:(id)sender
{
  UISegmentedControl *segment = (UISegmentedControl*) sender;
  if (segment != nil) {
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
    } // end switch
  } // end if
}

@end
