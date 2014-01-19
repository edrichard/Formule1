//
//  F1SplacheScreen.m
//  Formule1
//
//  Created by RICHARD Eddy on 16/01/2014.
//  Copyright (c) 2014 richardeddy. All rights reserved.
//

#import "F1SplacheScreen.h"

@interface F1SplacheScreen ()

@end

@implementation F1SplacheScreen

@synthesize logoImgName = _logoImgName;
@synthesize accroche = _accroche;

- (void) setup
{
    UIImageView *logoView = [[UIImageView alloc] initWithFrame:CGRectMake(F1_SCREEN_HEIGHT/3, F1_SCREEN_WIDTH/3, 315, 171)];
    UIImage *logoImg = [UIImage imageNamed:_logoImgName];
    logoView.image = logoImg;
    [self addSubview:logoView];
    
    UILabel *labelAccroche = [[UILabel alloc] initWithFrame:CGRectMake(F1_SCREEN_HEIGHT/3, (F1_SCREEN_WIDTH/3)+171, 315, 50)];
    labelAccroche.textColor = [UIColor whiteColor];
    labelAccroche.textAlignment = NSTextAlignmentCenter;
    labelAccroche.text = _accroche;
    [self addSubview:labelAccroche];
}

@end