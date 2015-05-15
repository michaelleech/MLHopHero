//
//  GameData.h
//  Hop Hero
//
//  Created by Michael Leech on 4/7/14.
//  Copyright (c) 2014 micah. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameData : NSObject
@property int highscore;

+ (id)data;
- (void)save;
- (void)load;

@end
