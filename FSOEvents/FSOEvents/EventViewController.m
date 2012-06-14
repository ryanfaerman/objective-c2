//
//  EventViewController.m
//  FSOEvents
//
//  Created by Ryan Faerman on 6/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "EventViewController.h"

@interface EventViewController ()

@end

@implementation EventViewController

@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self) {
    delegate = nil;
  }
  return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  
  eventDate = [NSDate date];
  // Prevent setting dates before today
  eventDatePicker.minimumDate = eventDate;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

// handler for button presses
- (IBAction)onButton:(id)sender
{
  UIButton *button = (UIButton*) sender;
  if (button != nil) {
    switch (button.tag) {
      case 0: // save
        if (delegate != nil) {
          // Pass the data to our delegate if one exists
          [delegate saveEvent:eventText.text on:eventDate];
        }
        // Intentionally fall through to close
      case 1: // close
        eventText.text = @"";
        [self dismissModalViewControllerAnimated:YES];
        break;
      case 2: // shut the keyboard
        [eventText resignFirstResponder];
        break;
      default:
        break;
    }
  }

}

- (IBAction)onChange:(id)sender
{
  UIDatePicker *picker = (UIDatePicker*) sender;
  if (picker != nil) {
    eventDate = picker.date;
  }
}

- (IBAction)doneButtonOnKeyboardPressed:(id)sender
{
  // Nothing to do, this is just for the keyboard to close
}

@end
