//
//  NSDUserView.h
//  taskOne
//
//  Created by NullStackDev on 06.07.16.
//  Copyright © 2016 nullStackDev. All rights reserved.
//
#import "NSDUser.h"
#import <Foundation/Foundation.h>



@interface NSDUserView : NSObject

+ (void) printWithUserArray:(NSMutableArray *)users;
+ (void) printWithUserObject:(NSDUser *)user;
@end
