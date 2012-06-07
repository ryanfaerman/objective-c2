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
	// Do any additional setup after loading the view, typically from a nib.
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
  NSLog(@"Number is: %d", button.tag);
  resultDisplay.text = [[NSString alloc] initWithFormat:@"%d", button.tag];
}
-(IBAction)onMetaKey:(id)sender
{
  UIButton *button = (UIButton*) sender;
  switch (button.tag) {

    case 0: // clear
      NSLog(@"Clear!");
      resultDisplay.text = @"";
      break;
    case 1: // plus
      NSLog(@"Plus!");
      break;
    case 2: // equals
      NSLog(@"Equals!");
      break;
    case 3: // info
      NSLog(@"Info!");
      break;
    case 4: // close
      NSLog(@"Close!");
      break;
    case 5:
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
