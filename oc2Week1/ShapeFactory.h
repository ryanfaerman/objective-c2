//
//  ShapeFactory.h
//  oc2Week1
//
//  Created by Ryan Faerman on 5/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ShapeClass.h"
#import "TriangleClass.h"
#import "SquareClass.h"
#import "RectangleClass.h"

@interface ShapeFactory : NSObject
{
  
}

// Static generator
+ (ShapeClass*) CreateShape:(NSInteger)shapeType;
@end


