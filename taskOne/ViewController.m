//
//  ViewController.m
//  taskOne
//
//  Created by NullStackDev on 06.07.16.
//  Copyright © 2016 nullStackDev. All rights reserved.
//
#import "NSDUserController.h"
#import "ViewController.h"
#import "NSDUserView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    
       // Do any additional setup after loading the view, typically from a nib.
    NSDUser * user1 = [[NSDUser alloc]initWithId:123 andName:@"Vasya" andBalance:12.0f andBonusCount:3];
    [user1 addBonus];
    [user1 addBonus];
    
    NSDUser * user2 =  [[NSDUser alloc]initWithId:103 andName:@"Anrey" andBalance:0.0f andBonusCount:1];
    
    NSDUser * user3 =  [[NSDUser alloc]initWithId:113 andName:@"Dasha" andBalance:-3.0f andBonusCount:3];
    
    NSDUser * user4 = [[NSDUser alloc] initWithId:1223 andName:@"Marina" andBalance:56.0f andBonusCount:4];
    
    
    [[NSDUserController sharedInstance]addUserWith:[[NSDUser alloc]initWithId:124 andName:@"New Vasya" andBalance:0.0f andBonusCount:3]];
    
    
    [[NSDUserController sharedInstance] addUserWith:user1 ];
    [[NSDUserController sharedInstance] addUserWith:user2 ];
    [[NSDUserController sharedInstance] addUserWith:user3 ];
    [[NSDUserController sharedInstance] addUserWith:user4 ];

    
    [NSDUserView printWithUserArray:[[NSDUserController sharedInstance]getActiveUsers]];
    
    
    [NSDUserView printWithUserArray:[[NSDUserController sharedInstance]getNoActiveUsers]];

    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
