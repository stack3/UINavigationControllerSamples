//
//  STSample1ViewController.m
//  UINavigationControllerSamples
//
//  Created by EIMEI on 2013/07/21.
//  Copyright (c) 2013 stack3. All rights reserved.
//

#import "STSample1ViewController.h"
#import "STSample2ViewController.h"

@implementation STSample1ViewController {
    IBOutlet __weak UIButton *_pushButton;
    IBOutlet __weak UIButton *_popButton;
}

- (id)init
{
    self = [super initWithNibName:@"STSample1ViewController" bundle:nil];
    if (self) {
        self.title = @"Sample1";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [_pushButton addTarget:self action:@selector(didTapPushButton) forControlEvents:UIControlEventTouchUpInside];
    [_popButton addTarget:self action:@selector(didTapPopButton) forControlEvents:UIControlEventTouchUpInside];
}

- (void)viewWillAppear:(BOOL)animated
{
    NSLog(@"STSample1ViewController#viewWillAppear");
}

- (void)viewDidAppear:(BOOL)animated
{
    NSLog(@"STSample1ViewController#viewDidAppear");
}

- (void)viewWillDisappear:(BOOL)animated
{
    NSLog(@"STSample1ViewController#viewWillDisappear");
}

- (void)viewDidDisappear:(BOOL)animated
{
    NSLog(@"STSample1ViewController#viewDidDisappear");
}

- (void)didTapPushButton
{
    STSample2ViewController *con = [[STSample2ViewController alloc] init];
    [self.navigationController pushViewController:con animated:YES];
}

- (void)didTapPopButton
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
