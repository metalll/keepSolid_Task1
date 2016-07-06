//
//  NSDUserView.m
//  taskOne
//
//  Created by NullStackDev on 06.07.16.
//  Copyright © 2016 nullStackDev. All rights reserved.
//

#import "NSDUserView.h"

@implementation NSDUserView

+(void)printWithUserArray:(NSMutableArray *)users{
    for(NSDUser * user in users){
        [NSDUserView printWithUserObject:user];
    }
}

+(void)printWithUserObject:(NSDUser *)user{
    
     NSLog(@"\nUser: \n id: %lu \n name: %@ \n balance %.2f \n active: %s bonusCount: %lu" ,
        (unsigned long)user.id,  user.name,   user.balance,  [user isActive]? "YES":"NO", (unsigned long)user.bonusCount);
}

@end
