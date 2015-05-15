//
//  MLHero.h
//  Hop Hero
//
//  Created by Michael Leech on 4/3/14.
//  Copyright (c) 2014 micah. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface MLHero : SKSpriteNode

+ (id)hero;
- (void)jump;
- (void)land;
- (void)start;
- (void)stop;

@end
