//
//  F1NavigationController.m
//  Formule1
//
//  Created by RICHARD Eddy on 19/01/2014.
//  Copyright (c) 2014 richardeddy. All rights reserved.
//

#import "F1NavigationController.h"

@interface F1NavigationController ()

@end

@implementation F1NavigationController

- (BOOL)shouldAutorotate
{
    return self.topViewController.shouldAutorotate;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return self.topViewController.supportedInterfaceOrientations;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return UIInterfaceOrientationLandscapeLeft;
}

@end
