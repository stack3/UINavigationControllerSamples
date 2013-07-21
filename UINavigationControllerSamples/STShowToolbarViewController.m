//
//  STShowToolbarViewController.m
//  UINavigationControllerSamples
//
//  Created by EIMEI on 2013/07/22.
//  Copyright (c) 2013 stack3. All rights reserved.
//

#import "STShowToolbarViewController.h"
#import "STHideToolbarViewController.h"

@implementation STShowToolbarViewController {
    IBOutlet __weak UIButton *_nextButton;
}

- (id)init
{
    self = [super initWithNibName:@"STShowToolbarViewController" bundle:nil];
    if (self) {
        self.title = @"Show Toolbar";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [_nextButton addTarget:self action:@selector(didTapNextButton) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
                                                                               target:self
                                                                               action:@selector(didTapAddButton)];
    UIBarButtonItem *deleteButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemTrash
                                                                                  target:self
                                                                                  action:@selector(didTapDeleteButton)];
    UIBarButtonItem *flexibleSpaceItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace
                                                                                       target:nil
                                                                                       action:nil];
    self.toolbarItems = @[addButton, flexibleSpaceItem, deleteButton];
}

- (void)viewWillAppear:(BOOL)animated
{
    [self.navigationController setToolbarHidden:NO];
}

- (void)didTapNextButton
{
    STHideToolbarViewController *con = [[STHideToolbarViewController alloc] init];
    [self.navigationController pushViewController:con animated:YES];
}

- (void)didTapAddButton
{
    NSLog(@"didTapAddButton");
}

- (void)didTapDeleteButton
{
    NSLog(@"didTapDeleteButton");
}

@end
