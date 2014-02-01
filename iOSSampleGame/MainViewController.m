//
//  MainViewController.m
//  iOSSampleGame
//
//  Created by Zhaochun Lu on 14-2-1.
//  Copyright (c) 2014年 Zhaochun Lu. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn setCenter:CGPointMake(50,50)];
    //CGRectInset(CGRectMake(50, 50, 100, 40), 10, 10)
    btn.frame = CGRectInset(CGRectMake(50, 50, 100, 40), -50, -50);
    [btn setTitle:@"Click me!" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor colorWithRed:155 green:0 blue:0 alpha:1]];
    [btn addTarget:self action:@selector(Clicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
	// Do any additional setup after loading the view.
}

- (void)Clicked:(id)sender{
    NSLog(@"%@ : Clicked",sender);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
