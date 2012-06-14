//
//  ViewController.h
//  FSOEvents
//
//  Created by Ryan Faerman on 6/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EventViewController.h"

@interface ViewController : UIViewController <EventViewDelegate>
{
  IBOutlet UITextView* eventDisplay;
  EventViewController *addEventView;
  NSString* eventListingText;
}
- (IBAction)onShowAddEventView:(id)sender;
@end
