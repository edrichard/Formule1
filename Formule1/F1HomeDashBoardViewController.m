//
//  F1HomeDashBoardViewController.m
//  Formule1
//
//  Created by RICHARD Eddy on 17/01/2014.
//  Copyright (c) 2014 richardeddy. All rights reserved.
//

#import "F1HomeDashBoardViewController.h"
#include "F1Button.h"

@interface F1HomeDashBoardViewController () <F1ButtonShowDelegate>

@property (nonatomic, strong) F1Button *btnEquipe;
@property (nonatomic, strong) F1Button *btnCircuit;
@property (nonatomic, strong) F1Button *btnActu;
@property (nonatomic, strong) F1Button *btnInfo;

- (void) setupBtnEquipe;
- (void) setupBtnCircuit;
- (void) setupBtnActu;
- (void) setupBtnInfo;
- (void) didTapEquipeButton:(F1Button *) f1Button;
- (void) didTapCircuitButton:(F1Button *) f1Button;
- (void) didTapActuButton:(F1Button *) f1Button;

- (void) didTapInfoButton:(F1Button *) f1Button;

@end

@implementation F1HomeDashBoardViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.navigationController.navigationBarHidden = NO;
    self.navigationItem.hidesBackButton = YES;
    self.title = @"Menu Principal";
    
    [self setupBtnEquipe];
    [self setupBtnCircuit];
    [self setupBtnActu];
    [self setupBtnInfo];
}

#pragma mark -- setup boutton --

- (void) setupBtnEquipe
{
    self.btnEquipe = [[F1Button alloc] initWithFrame:CGRectMake(0, 80, 350, 200)];
    self.btnEquipe.backgroundColor = [UIColor greenColor];
    self.btnEquipe.labelName = @"Les équipes";
    self.btnEquipe.icoName = @"circuit.png";
    self.btnEquipe.delegate = self;
    self.btnEquipe.nomBoutton = F1_BOUTTON_EQUIPE;
    [self.btnEquipe setupShow];
    [self.view addSubview:self.btnEquipe];
}

- (void) setupBtnCircuit
{
    self.btnCircuit = [[F1Button alloc] initWithFrame:CGRectMake(350, 80, 350, 200)];
    self.btnCircuit.backgroundColor = [UIColor redColor];
    self.btnCircuit.labelName = @"Les circuits";
    self.btnCircuit.icoName = @"circuit.png";
    self.btnCircuit.delegate = self;
    self.btnCircuit.nomBoutton = F1_BOUTTON_CIRCUIT;
    [self.btnCircuit setupShow];
    [self.view addSubview:self.btnCircuit];
}

- (void) setupBtnActu
{
    self.btnActu = [[F1Button alloc] initWithFrame:CGRectMake(350*2, 80, 350, 200)];
    self.btnActu.backgroundColor = [UIColor yellowColor];
    self.btnActu.labelName = @"Les actus";
    self.btnActu.icoName = @"circuit.png";
    self.btnActu.delegate = self;
    self.btnActu.nomBoutton = F1_BOUTTON_ACTU;
    [self.btnActu setupShow];
    [self.view addSubview:self.btnActu];
}

- (void) setupBtnInfo
{
    self.btnInfo = [[F1Button alloc] initWithFrame:CGRectMake(350*2, 80+200+200, 350, 200)];
    self.btnInfo.backgroundColor = [UIColor yellowColor];
    self.btnInfo.labelName = @"Les infos";
    self.btnInfo.icoName = @"circuit.png";
    self.btnInfo.delegate = self;
    self.btnInfo.nomBoutton = F1_BOUTTON_INFO;
    [self.btnInfo setupShow];
    [self.view addSubview:self.btnInfo];
}

#pragma mark -- GestureRecognizer --

- (void) didTapEquipeButton:(F1Button *) f1Button
{
    NSLog(@"equipes");
}

- (void) didTapCircuitButton:(F1Button *) f1Button
{
    NSLog(@"circuit");
}

- (void) didTapActuButton:(F1Button *) f1Button
{
    NSLog(@"actu");
}

- (void) didTapInfoButton:(F1Button *) f1Button
{
    NSLog(@"info");
}

#pragma mark -- Autres méthodes --

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
