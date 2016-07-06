//
//  NSDUserController.h
//  taskOne
//
//  Created by NullStackDev on 06.07.16.
//  Copyright © 2016 nullStackDev. All rights reserved.
//
#import "NSDUser.h"
#import <Foundation/Foundation.h>

@interface NSDUserController : NSObject{
    @protected
    NSMutableArray * users;
}

+ (instancetype)sharedInstance;

- (void) addUserWith: (NSDUser *)user;
- (void) removeUserWithId: (NSUInteger)id;
- (NSMutableArray *) getActiveUsers;
- (NSMutableArray *) getNoActiveUsers;
- (NSMutableArray *) getAllUsers;
@end
