//
//  ViewController.h
//  FSOCalculator
//
//  Created by Ryan Faerman on 6/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InfoController.h"

@interface ViewController : UIViewController
{
  IBOutlet UITextField* resultDisplay;
  int total;
  int operand;
  BOOL active;
  
  InfoController *informationPane;
}
-(IBAction)onNumberKey:(id)sender;
-(IBAction)onMetaKey:(id)sender;
-(IBAction)onColorChoice:(id)sender;
@end
