//
//  EventViewController.h
//  FSOEvents
//
//  Created by Ryan Faerman on 6/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol EventViewDelegate <NSObject>

@required
- (void)saveEvent:(NSString *)name on:(NSDate*)date;

@end

@interface EventViewController : UIViewController
{
  IBOutlet UITextField* eventText;
  IBOutlet UIDatePicker* eventDatePicker;
  NSDate *eventDate;
  
  UISwipeGestureRecognizer *closeSwiper;
  IBOutlet UILabel *closeEventLabel;
  
  id<EventViewDelegate> delegate;
}

- (IBAction)onButton:(id)sender;
- (IBAction)onChange:(id)sender;
- (IBAction)doneButtonOnKeyboardPressed:(id)sender;
- (void)swipeSaveEvent:(UISwipeGestureRecognizer*)swipe;

@property (strong) id<EventViewDelegate> delegate;

@end
