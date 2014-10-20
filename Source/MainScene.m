//
//  MainScene.m
//  PROJECTNAME
//
//  Created by Viktor on 10/10/13.
//  Copyright (c) 2013 Apportable. All rights reserved.
//

#import "MainScene.h"
#import "Character.h"

@implementation MainScene

- (void)didLoadFromCCB
{
    // Enable user interaction to touch the screen.
    self.userInteractionEnabled = YES;
    
    // Create a Character instance.
    self.character = (Character *)[CCBReader load:@"Character"];
    // Set character's position.
    self.character.position = ccp(100, 200);
    // Add character to MainScene.
    [self addChild:self.character];
}

- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event
{
    NSLog(@"touched");
    // Create random number for x position & y position.
    int x = arc4random() % 100 - 50;
    int y = arc4random() % 100 - 50;
    // Create move action function to move character to random position with x & y created above when the screen is touched.
    CCActionMoveBy *move = [CCActionMoveBy actionWithDuration:1.f position:ccp(x, y)];
    // Have character does move action
    [self.character runAction:move];
}

@end
