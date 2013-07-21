//
//  STViewController.m
//  UINavigationControllerSamples
//
//  Created by EIMEI on 2013/07/21.
//  Copyright (c) 2013 stack3. All rights reserved.
//

#import "STViewController.h"
#import "STSample1ViewController.h"

#define _STCellId @"CellId"


typedef enum {
    _STMenuItemPushAndPop
} _STMenuItems;

@implementation STViewController {
    __strong NSMutableArray *_items;
    IBOutlet __weak UITableView *_tableView;
}

- (id)init
{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        self.title = @"Menu";
        
        _items = [NSMutableArray arrayWithCapacity:10];
        
        [_items addObject:@"Push & Pop"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:_STCellId];
    _tableView.dataSource = self;
    _tableView.delegate = self;
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:_STCellId forIndexPath:indexPath];
    
    NSString *item = [_items objectAtIndex:indexPath.row];
    cell.textLabel.text = item;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == _STMenuItemPushAndPop) {
        STSample1ViewController *con = [[STSample1ViewController alloc] init];
        [self.navigationController pushViewController:con animated:YES];
    }
}

@end
