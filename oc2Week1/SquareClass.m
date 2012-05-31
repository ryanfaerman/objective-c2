//
//  SquareClass.m
//  oc2Week1
//
//  Created by Ryan Faerman on 5/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SquareClass.h"

@implementation SquareClass

- (id) init
{
  if (self == [super init]) {
    numSides = 4;
    name = @"Square";
  }
  
  return self;
}

- (int) GetArea
{
  return 10 * 4;
}

@end
