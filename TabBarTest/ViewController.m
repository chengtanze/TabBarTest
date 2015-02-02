//
//  ViewController.m
//  TabBarTest
//
//  Created by wangsl-iMac on 14-10-24.
//  Copyright (c) 2014年 wangsl-iMac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UIToolbar *toolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 100, 320, 100)];
    [self.view addSubview:toolbar];
    
    //toolbar.backgroundColor = [UIColor redColor];
    
    
    UIBarButtonItem * item1 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:nil];
    //item1.width = 80.0;
    
    CGRect rect = toolbar.bounds;
    UIButton *mybutton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    mybutton.frame = CGRectMake(0, 0, rect.size.width / 4.0, rect.size.height);
    mybutton.backgroundColor = [UIColor redColor];
    [mybutton setTitle:@"click" forState:UIControlStateNormal];
    UIBarButtonItem *item2 = [[UIBarButtonItem alloc]initWithCustomView:mybutton];
    //[item2 setBackgroundVerticalPositionAdjustment:50 forBarMetrics:UIBarMetricsDefault];
  
    //UIOffset offset = {50.0,50.0};
    //[item2 setTitlePositionAdjustment:offset forBarMetrics:UIBarMetricsCompact];
    //[[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(-5, -5) //forBarMetrics:UIBarMetricsDefault];
    
    UIBarButtonItem *item3 = [[UIBarButtonItem alloc]initWithTitle:@"Click!" style:UIBarButtonItemStyleBordered target:self action:nil];
    [item3 setBackButtonBackgroundVerticalPositionAdjustment:-20.0 forBarMetrics:UIBarMetricsDefault];
    
    
    
    UIBarButtonItem *item4 = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    
    UIBarButtonItem *item5 = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    
    UIBarButtonItem *item6 = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    
    NSArray * itemarray = @[item1, item4, item2, item3];
    
    [toolbar setItems:itemarray animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
