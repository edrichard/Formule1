//
//  F1ViewController.m
//  Formule1
//
//  Created by RICHARD Eddy on 16/01/2014.
//  Copyright (c) 2014 richardeddy. All rights reserved.
//

#import "F1ViewController.h"
#import "F1SplacheScreen.h"
#import "F1HomeDashBoardViewController.h"

@interface F1ViewController ()

@property (nonatomic, strong) F1SplacheScreen *splachScreen;

@end

@implementation F1ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.navigationController.navigationBarHidden = YES;
    
    self.splachScreen = [[F1SplacheScreen alloc] init];
    self.splachScreen.logoImgName = @"logoF1.jpg";
    self.splachScreen.accroche = @"La F1 au quotidien";
    [self.splachScreen setup];
    [self.view addSubview:self.splachScreen];
    
    NSInteger delay = 2;
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, delay * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        self.splachScreen.alpha = 0;
        F1HomeDashBoardViewController *viewHomeDashBoard = [F1HomeDashBoardViewController new];
        [self.navigationController pushViewController:viewHomeDashBoard animated:YES];
    });
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
