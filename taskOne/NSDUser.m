//
//  NSDUser.m
//  taskOne
//
//  Created by NullStackDev on 06.07.16.
//  Copyright © 2016 nullStackDev. All rights reserved.
//

#import "NSDUser.h"

@implementation NSDUser
@synthesize active;


- (instancetype)init{
    return [self initWithId:0 andName:@"Untitled" andBalance:0.0 andBonusCount:0];
}

-   (instancetype)initWithId:(NSInteger)id
                  andName:(NSString *)name
               andBalance:(float)balance
            andBonusCount:(NSUInteger)bonusCount {
                
    self = [super init];
    if (self) {
        self->_id = id;
        self->_name = name;
        self->_balance = balance;
        self->_bonusCount = bonusCount;
        
    }
    return self;
                
}


-   (BOOL) isActive {
    if(!active)  active = _balance>0.0f;
    if(self->_balance <= 0) return false;
    return true;
}

-   (void) addBonus {
    
    if(++_bonusCount < magicTally) return;
    _bonusCount=0;
    _balance++;
}

-   (void) removeBonus{
    if(--_bonusCount > 0) return;
    _bonusCount=0;
    _balance--;
}

@end
