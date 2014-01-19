//
//  F1Button.m
//  Formule1
//
//  Created by RICHARD Eddy on 19/01/2014.
//  Copyright (c) 2014 richardeddy. All rights reserved.
//

#import "F1Button.h"

@interface F1Button ()

- (void) didTaped:(UITapGestureRecognizer *)sender;

@end

@implementation F1Button

@synthesize labelName = _labelName;
@synthesize icoName = _icoName;
@synthesize nomBoutton = _nomBoutton;

- (void) setupShow
{
    UIImageView *icoView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 35, 128, 128)];
    UIImage *icoImg = [UIImage imageNamed:_icoName];
    icoView.image = icoImg;
    [self addSubview:icoView];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(157.5, 35, 128, 128)];
    label.text = _labelName;
    [self addSubview:label];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didTaped:)];
    tapGesture.enabled = YES;
    [self addGestureRecognizer:tapGesture];
}

- (void) didTaped:(UITapGestureRecognizer *)sender
{
    if ([[self delegate] respondsToSelector:@selector(didTapEquipeButton:)] && [self.nomBoutton isEqualToString: F1_BOUTTON_EQUIPE]) {
        [self.delegate didTapEquipeButton:self];
    } else if ([[self delegate] respondsToSelector:@selector(didTapCircuitButton:)] && [self.nomBoutton isEqualToString: F1_BOUTTON_CIRCUIT]) {
        [self.delegate didTapCircuitButton:self];
    } else if ([[self delegate] respondsToSelector:@selector(didTapActuButton:)] && [self.nomBoutton isEqualToString: F1_BOUTTON_ACTU]) {
        [self.delegate didTapActuButton:self];
    } else if ([[self delegate] respondsToSelector:@selector(didTapInfoButton:)] && [self.nomBoutton isEqualToString: F1_BOUTTON_INFO]) {
        [self.delegate didTapInfoButton:self];
    }
}

@end
