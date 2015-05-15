//
//  MLPointsLabel.h
//  Hop Hero
//
//  Created by Michael Leech on 4/5/14.
//  Copyright (c) 2014 micah. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface MLPointsLabel : SKLabelNode
@property int number;

+ (id)pointsLabelWithFontNamed:(NSString *)fontName;
- (void)increment;
- (void)setPoints:(int)points;
- (void)reset;
@end
