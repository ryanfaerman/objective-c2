//
//  ShapeFactory.m
//  oc2Week1
//
//  Created by Ryan Faerman on 5/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ShapeFactory.h"

@implementation ShapeFactory

+ (ShapeClass*) CreateShape:(NSInteger)shapeType
{
  switch (shapeType) {
    case 0:
      return [[SquareClass alloc] init];
      break;
    case 1:
      return [[TriangleClass alloc] init];
      break;
    case 2:
      return [[RectangleClass alloc] init];
      break;
    default:
      return nil;
      break;
  }
}

@end
