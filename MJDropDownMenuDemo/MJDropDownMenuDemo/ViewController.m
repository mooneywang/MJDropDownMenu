//
//  ViewController.m
//  MJDropDownMenuDemo
//
//  Created by 王梦杰 on 16/1/18.
//  Copyright (c) 2016年 Mooney_wang. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Extension.h"
#import "MJDropDownMenu.h"
#import "ContentView.h"
#import "ContentViewController.h"

@interface ViewController ()

- (IBAction)showAction:(UIButton *)sender;

- (IBAction)showAction2:(UIButton *)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showAction:(UIButton *)sender {
    MJDropDownMenu *dropDownMenu = [MJDropDownMenu dropDownMenu];
    ContentView *contentView = [[ContentView alloc] init];
    contentView.frame = CGRectMake(0, 0, 217, 150);
    contentView.backgroundColor = [UIColor whiteColor];
    dropDownMenu.content = contentView;
    [dropDownMenu showFrom:sender];
}

- (IBAction)showAction2:(UIButton *)sender {
    MJDropDownMenu *dropDownMenu = [MJDropDownMenu dropDownMenu];
    ContentViewController *contentViewController = [[ContentViewController alloc] init];
    contentViewController.view.height = 3 * 44;
    contentViewController.view.width = 217;
    dropDownMenu.contentViewController = contentViewController;
    [dropDownMenu showFrom:sender];
}


@end
