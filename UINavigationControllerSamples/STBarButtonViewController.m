//
//  STBarButtonViewController.m
//  UINavigationControllerSamples
//
//  Created by EIMEI on 2013/07/22.
//  Copyright (c) 2013 stack3. All rights reserved.
//

#import "STBarButtonViewController.h"
#import "STMessageViewController.h"

@implementation STBarButtonViewController

- (id)init
{
    self = [super initWithNibName:@"STBarButtonViewController" bundle:nil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCompose
                                                                                           target:self
                                                                                           action:@selector(didTapMessageButton)];
    
    
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
                                                                               target:self
                                                                               action:@selector(didTapAddButton)];
    
    UIBarButtonItem *deleteButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemTrash
                                                                                  target:self
                                                                                  action:@selector(didTapDeleteButton)];
    
    UIBarButtonItem *textButton = [[UIBarButtonItem alloc] initWithTitle:@"Text"
                                                                         style:UIBarButtonItemStylePlain
                                                                        target:self
                                                                        action:@selector(didTapTextButton)];

    UIBarButtonItem *flexibleItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace
                                                                                  target:nil
                                                                                  action:nil];
    
    self.toolbarItems = @[addButton, flexibleItem, textButton, flexibleItem, deleteButton];
}

- (void)viewWillAppear:(BOOL)animated
{
    [self.navigationController setToolbarHidden:NO animated:YES];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [self.navigationController setToolbarHidden:YES animated:YES];
}

- (void)didTapAddButton
{
    NSLog(@"didTapAddButton");
}

- (void)didTapDeleteButton
{
    NSLog(@"didTapDeleteButton");
}

- (void)didTapTextButton
{
    NSLog(@"didTapTextButton");
}

- (void)didTapMessageButton
{
    STMessageViewController *con = [[STMessageViewController alloc] init];
    UINavigationController *navCon = [[UINavigationController alloc] initWithRootViewController:con];
    [self presentViewController:navCon animated:YES completion:nil];
}

@end
