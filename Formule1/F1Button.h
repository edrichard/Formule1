//
//  F1Button.h
//  Formule1
//
//  Created by RICHARD Eddy on 19/01/2014.
//  Copyright (c) 2014 richardeddy. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol F1ButtonDelegate;

@interface F1Button : UIView

@property (nonatomic, strong) NSString *labelName;
@property (nonatomic, strong) NSString *icoName;
@property (nonatomic, strong) NSString *nomBoutton;
@property(nonatomic, weak) id<F1ButtonDelegate> delegate;

- (void) setupShow;

@end

@protocol F1ButtonDelegate <NSObject>

- (void) didTapEquipeButton:(F1Button *) f1Button;
- (void) didTapCircuitButton:(F1Button *) f1Button;
- (void) didTapActuButton:(F1Button *) f1Button;

- (void) didTapInfoButton:(F1Button *) f1Button;

@end