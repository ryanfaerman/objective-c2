//
//  ViewController.m
//  FSOEvents
//
//  Created by Ryan Faerman on 6/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "EventViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  addEventView = [[EventViewController alloc] initWithNibName:@"EventViewController" bundle:nil];
  if (addEventView != nil) {
    addEventView.delegate = self;
  }
  eventListingText = nil;
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

- (IBAction)onShowAddEventView:(id)sender
{
  UIButton *button = (UIButton*) sender;
  if(button != nil) {
    [self presentModalViewController:addEventView animated:YES];
  }
}

- (void)saveEvent:(NSString *)name on:(NSDate*)date
{
  if (eventListingText == nil) {
    eventDisplay.text = @"";
  }
  NSString *newEventText = [[NSString alloc] initWithFormat:@"New Event: %@\n%@\n\n", name, date];
  eventListingText = [[NSString alloc] initWithFormat:@"%@%@", eventDisplay.text, newEventText];
  eventDisplay.text = eventListingText;
}

@end
