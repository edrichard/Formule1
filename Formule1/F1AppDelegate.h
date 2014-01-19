//
//  F1AppDelegate.h
//  Formule1
//
//  Created by RICHARD Eddy on 16/01/2014.
//  Copyright (c) 2014 richardeddy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "F1ViewController.h"

@interface F1AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong) F1ViewController *viewContoller;
@property (nonatomic, strong) UINavigationController *navigationController;

@end
