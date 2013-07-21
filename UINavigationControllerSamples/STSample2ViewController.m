//
//  STSample2ViewController.m
//  UINavigationControllerSamples
//
//  Created by EIMEI on 2013/07/21.
//  Copyright (c) 2013 stack3. All rights reserved.
//

#import "STSample2ViewController.h"

@implementation STSample2ViewController {
    IBOutlet __weak UIButton *_popButton;
    IBOutlet __weak UIButton *_popToTopButton;
}

- (id)init
{
    self = [super initWithNibName:@"STSample2ViewController" bundle:nil];
    if (self) {
        self.title = @"Sample2";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [_popButton addTarget:self action:@selector(didTapPopButton) forControlEvents:UIControlEventTouchUpInside];
    [_popToTopButton addTarget:self action:@selector(didTapPopToTopButton) forControlEvents:UIControlEventTouchUpInside];
}

- (void)viewWillAppear:(BOOL)animated
{
    NSLog(@"STSample2ViewController#viewWillAppear");
}

- (void)viewDidAppear:(BOOL)animated
{
    NSLog(@"STSample2ViewController#viewDidAppear");
}

- (void)viewWillDisappear:(BOOL)animated
{
    NSLog(@"STSample2ViewController#viewWillDisappear");
}

- (void)viewDidDisappear:(BOOL)animated
{
    NSLog(@"STSample2ViewController#viewDidDisappear");
}

- (void)didTapPopButton
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didTapPopToTopButton
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end
