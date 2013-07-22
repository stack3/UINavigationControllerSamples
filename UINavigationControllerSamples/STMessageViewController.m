//
//  STMessageViewController.m
//  UINavigationControllerSamples
//
//  Created by EIMEI on 2013/07/22.
//  Copyright (c) 2013 stack3. All rights reserved.
//

#import "STMessageViewController.h"

@implementation STMessageViewController {
    IBOutlet __weak UITextView *_textView;
}

- (id)init
{
    self = [super initWithNibName:@"STMessageViewController" bundle:nil];
    if (self) {
        self.title = @"Message";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Close"
                                                                             style:UIBarButtonItemStyleBordered
                                                                            target:self
                                                                            action:@selector(didTapCloseButton)];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone
                                                                                           target:self
                                                                                           action:@selector(didTapDoneButton)];
}

- (void)viewWillAppear:(BOOL)animated
{
    [_textView becomeFirstResponder];
}

- (void)didTapCloseButton
{
    NSLog(@"Close");
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didTapDoneButton
{
    NSLog(@"Done");
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
