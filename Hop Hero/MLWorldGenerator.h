//
//  MLWorldGenerator.h
//  Hop Hero
//
//  Created by Michael Leech on 4/5/14.
//  Copyright (c) 2014 micah. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface MLWorldGenerator : SKNode

+ (id)generatorWithWorld:(SKNode *)world;
- (void)populate;
- (void)generate;


@end
