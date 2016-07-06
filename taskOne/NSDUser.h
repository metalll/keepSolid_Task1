//
//  NSDUser.h
//  taskOne
//
//  Created by NullStackDev on 06.07.16.
//  Copyright © 2016 nullStackDev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDUser : NSObject

#define magicTally 5

@property(readonly)                 NSUInteger id;
@property(readonly)                 NSString * name;
@property(readonly)                 float balance;
@property(readonly,getter=isActive) BOOL active;
@property(readonly)                 NSUInteger bonusCount;

-(instancetype)initWithId:(NSInteger)id
                  andName:(NSString *)name
               andBalance:(float)balance
            andBonusCount:(NSUInteger)bonusCount;

-(void) addBonus;
-(void) removeBonus;
- (BOOL) isActive;
@end
