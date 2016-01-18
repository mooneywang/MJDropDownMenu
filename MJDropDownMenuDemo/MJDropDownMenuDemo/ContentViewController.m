//
//  ContentViewController.m
//  MJDropDownMenuDemo
//
//  Created by 王梦杰 on 16/1/18.
//  Copyright (c) 2016年 Mooney_wang. All rights reserved.
//

#import "ContentViewController.h"

static NSString *cellID = @"ContentViewControllerCellID";

@interface ContentViewController ()

@end

@implementation ContentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellID];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 3;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];
    
    if (indexPath.row == 0) {
        cell.textLabel.text = @"好友";
    }else if (indexPath.row == 1){
        cell.textLabel.text = @"名人";
    }else if (indexPath.row == 2){
        cell.textLabel.text = @"歌手";
    }
    
    return cell;
}


@end
