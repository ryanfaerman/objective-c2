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
  eventListingText = NULL;
  
  saveAlert = [[UIAlertView alloc] initWithTitle:@"Saved!" message:@"Your events have been saved." delegate:nil cancelButtonTitle:@"Okay" otherButtonTitles:nil, nil];
  
  // Restore any saved event listings
  NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
  if (defaults != nil) {
    [defaults removeObjectForKey:@"eventListing"];
    eventListingText = [defaults objectForKey:@"eventListing"];
    if (eventListingText != NULL) {
      eventDisplay.text = eventListingText;
    }
  }
}

- (void)viewWillAppear:(BOOL)animated
{ 
  // setup the swipe gesture on the label
  addSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeShowAddEvent:)];
  addSwiper.direction = UISwipeGestureRecognizerDirectionRight;
  [addEventLabel addGestureRecognizer:addSwiper];
  
  [super viewWillAppear:animated];
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

- (void)swipeShowAddEvent:(UISwipeGestureRecognizer*)swipe
{
  [self presentModalViewController:addEventView animated:YES];
}

- (void)saveEvent:(NSString *)name on:(NSDate*)date
{
  if (eventListingText == NULL) {
    eventDisplay.text = @"";
  }
  NSString *newEventText = [[NSString alloc] initWithFormat:@"New Event: %@\n%@\n\n", name, date];
  eventListingText = [[NSString alloc] initWithFormat:@"%@%@", eventDisplay.text, newEventText];
  eventDisplay.text = eventListingText;
}

- (IBAction)onSave:(id)sender
{
  NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
  // Don't save the default text (or nothing)
  if (defaults != nil && eventListingText != NULL) {
    NSLog(@"%@", eventListingText);
    [defaults setObject:eventListingText forKey:@"eventListing"];
    [defaults synchronize]; // Commit the data
    [saveAlert show];    
  }
}

@end
