//
//  STHideToolbarViewController.m
//  UINavigationControllerSamples
//
//  Created by EIMEI on 2013/07/22.
//  Copyright (c) 2013 stack3. All rights reserved.
//

#import "STHideToolbarViewController.h"

@implementation STHideToolbarViewController

- (id)init
{
    self = [super initWithNibName:@"STHideToolbarViewController" bundle:nil];
    if (self) {
        self.title = @"Hide Toolbar";
        
        self.hidesBottomBarWhenPushed = YES;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

@end
