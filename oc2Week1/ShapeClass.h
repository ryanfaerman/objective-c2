//
//  ShapeClass.h
//  oc2Week1
//
//  Created by Ryan Faerman on 5/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ShapeClass : NSObject
{
  int numSides;
  NSString *name;
}

- (int) GetNumSides;
- (NSString*) GetName;
- (int) GetArea;
@end
