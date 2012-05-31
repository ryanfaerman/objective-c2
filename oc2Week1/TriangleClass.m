//
//  TriangleClass.m
//  oc2Week1
//
//  Created by Ryan Faerman on 5/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TriangleClass.h"

@implementation TriangleClass

- (id) init
{
  if (self == [super init]) {
    numSides = 3;
    name = @"Triangle";
  }
  
  return self;
}

- (int) GetArea
{
  return 0.5f * 10 * 4;
}

@end
