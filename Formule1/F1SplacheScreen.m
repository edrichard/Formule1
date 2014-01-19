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
    UIImageView *logoView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 315, 171)];
    UIImage *logoImg = [UIImage imageNamed:_logoImgName];
    logoView.image = logoImg;
    [self addSubview:logoView];
    
    UILabel *labelAccroche = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 315, 171)];
    labelAccroche.textColor = [UIColor whiteColor];
    labelAccroche.text = _accroche;
    [self addSubview:labelAccroche];
}

@end