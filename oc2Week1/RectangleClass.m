//
//  RectangleClass.m
//  oc2Week1
//
//  Created by Ryan Faerman on 5/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RectangleClass.h"

@implementation RectangleClass

- (id) init
{
  if (self == [super init]) {
    numSides = 4;
    name = @"Rectangle";
  }
  
  return self;
}

- (int) GetArea
{
  return 5 * 5;
}

@end
