//
//  F1HomeDashBoardViewController.m
//  Formule1
//
//  Created by RICHARD Eddy on 17/01/2014.
//  Copyright (c) 2014 richardeddy. All rights reserved.
//

#import "F1HomeDashBoardViewController.h"

@interface F1HomeDashBoardViewController ()

@end

@implementation F1HomeDashBoardViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.navigationController.navigationBarHidden = NO;
    self.navigationItem.hidesBackButton = YES;
    self.title = @"Menu Principal";
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSUInteger)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskLandscape;
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return UIInterfaceOrientationLandscapeLeft;
}

@end
