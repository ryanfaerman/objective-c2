//
//  ViewController.m
//  oc2Week1
//
//  Created by Ryan Faerman on 5/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "ShapeFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  
  // Build some shapes, like a boss!
  ShapeClass *square = [ShapeFactory CreateShape:0];
  ShapeClass *triangle = [ShapeFactory CreateShape:1];
  ShapeClass *rectangle = [ShapeFactory CreateShape:2];
  
  
  // Add the square label, like a boss!
  UILabel *squareLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 10.0f, 320.0f, 30.0f)];
  squareLabel.text = [[NSString alloc] initWithFormat:@"Shape Square Area: %d", [square GetArea]];
  [self.view addSubview:squareLabel];
  
  // Add the triangle label, like a boss!
  UILabel *triangleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 50.0f, 320.0f, 30.0f)];
  triangleLabel.text = [[NSString alloc] initWithFormat:@"Shape Triangle Area: %d", [triangle GetArea]];
  [self.view addSubview:triangleLabel];
  
  // Add the rectangle label, like a boss!
  UILabel *rectangleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 90.0f, 320.0f, 30.0f)];
  rectangleLabel.text = [[NSString alloc] initWithFormat:@"Shape Rectangle Area: %d", [rectangle GetArea]];
  [self.view addSubview:rectangleLabel];
  
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

@end
