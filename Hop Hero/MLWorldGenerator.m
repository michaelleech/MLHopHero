//
//  MLWorldGenerator.m
//  Hop Hero
//
//  Created by Michael Leech on 4/5/14.
//  Copyright (c) 2014 micah. All rights reserved.
//

#import "MLWorldGenerator.h"

@interface MLWorldGenerator ()
@property double currentGroundX;
@property double currentObstacleX;
@property SKNode *world;
@end

@implementation MLWorldGenerator

static const uint32_t obstacleCategory = 0x1 << 1;
static const uint32_t groundCategory = 0x1 << 2;

+ (id)generatorWithWorld:(SKNode *)world
{
    MLWorldGenerator *generator = [MLWorldGenerator node];
    generator.currentGroundX = 0;
    generator.currentObstacleX = 400;
    generator.world = world;
    return generator;
}

- (void)populate
{
    for (int i = 0; i < 3; i++)
        [self generate];
}

- (void)generate
{
    SKSpriteNode *ground = [SKSpriteNode spriteNodeWithImageNamed:@"ground"];
    ground.name = @"ground";
    ground.position = CGPointMake(self.currentGroundX, -self.scene.frame.size.height/2 + ground.frame.size.height/2);;
    ground.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:ground.size];
    ground.physicsBody.categoryBitMask = groundCategory;
    ground.physicsBody.dynamic = NO;
    [self.world addChild:ground];
    
    self.currentGroundX += ground.frame.size.width;
    
    SKSpriteNode *obstacle = [SKSpriteNode spriteNodeWithColor:[self getRandomColor] size:CGSizeMake(40, 50)];
    obstacle.name = @"obstacle";
    obstacle.position = CGPointMake(self.currentObstacleX, ground.position.y + ground.frame.size.height/2 + obstacle.frame.size.height/2);
    obstacle.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:obstacle.size];
    obstacle.physicsBody.categoryBitMask = obstacleCategory;
    obstacle.physicsBody.dynamic = NO;
    [self.world addChild:obstacle];
    
    self.currentObstacleX += 250;
}

- (UIColor *)getRandomColor
{
    int rand = arc4random() % 6;
    
    UIColor *color;
    switch (rand) {
        case 0:
            color = [UIColor redColor];
            break;
        case 1:
            color = [UIColor orangeColor];
            break;
        case 2:
            color = [UIColor yellowColor];
            break;
        case 3:
            color = [UIColor greenColor];
            break;
        case 4:
            color = [UIColor purpleColor];
            break;
        case 5:
            color = [UIColor blueColor];
            break;
            
        default:
            break;
    }
    return color;
}

@end
