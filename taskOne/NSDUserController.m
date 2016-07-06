//
//  NSDUserController.m
//  taskOne
//
//  Created by NullStackDev on 06.07.16.
//  Copyright © 2016 nullStackDev. All rights reserved.
//

#import "NSDUserController.h"

@implementation NSDUserController

+ (instancetype)sharedInstance {
    static NSDUserController * _sharedInstance = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        _sharedInstance = [[NSDUserController alloc] init];
    });
    return _sharedInstance;
}


- (void) addUserWith:(NSDUser *)user{
    if(!users){users = [[NSMutableArray alloc]init];}
    [users addObject:user];
    
}

- (NSMutableArray *)getActiveUsers{
    NSMutableArray * retVal = [[NSMutableArray alloc]init];
    for(NSDUser * user in users){
        if([user isActive]){
            [retVal addObject:user];
        }
    }
    return retVal;
}

- (NSMutableArray *)getAllUsers{
    return users;
}

- (NSMutableArray *)getNoActiveUsers{
    NSMutableArray * retVal = [[NSMutableArray alloc]init];
    for(NSDUser * user in users){
        if(![user isActive]){
            [retVal addObject:user];
        }
    }
    return retVal;
}

- (void) removeUserWithId:(NSUInteger)id{
    if(!users){users = [[NSMutableArray alloc]init]; @throw [[NSException alloc]initWithName:@"EmptyArray" reason:nil userInfo:nil];}
    if(users.count<1) @throw [[NSException alloc]initWithName:@"EmptyArray" reason:nil userInfo:nil];
    
    for(NSDUser * user in users){
        if(user.id==id){
            [users removeObject:user];
        }
    }
    
    @throw [[NSException alloc]initWithName:@"don't exist object with @%id" reason:nil userInfo:nil];
    
}

@end
