//
//  MainViewController.m
//  iOSSampleGame
//
//  Created by Zhaochun Lu on 14-2-1.
//  Copyright (c) 2014年 Zhaochun Lu. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController () {
    CGRect rect;
    UIView *middleview;
}
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

- (BOOL)prefersStatusBarHidden{
    return YES;
}

- (void)viewDidLoad
{
    
    rect = [[UIScreen mainScreen]bounds];
    
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    //[btn setCenter:CGPointMake(50,50)];
    //CGRectInset(CGRectMake(50, 50, 100, 40), 10, 10)
    btn.frame = CGRectInset(CGRectMake(50, 50, 80, 20), 0, 0);
    //[btn setBackgroundImage:[UIImage imageWithContentsOfFile:@"/btn.png"] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"btn" ofType:@"png"]] forState:UIControlStateNormal];

    [btn setTitle:@"Click me!" forState:UIControlStateNormal];
    //[btn setBackgroundColor:[UIColor colorWithRed:155 green:0 blue:0 alpha:1]];
    
    [btn addTarget:self action:@selector(Clicked:) forControlEvents:UIControlEventTouchUpInside];
    
    UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(0,0,rect.size.width,105)];
    
    //[topview setBackgroundColor:[UIColor blueColor]];
    [topview addSubview:btn];
    
    middleview = [[UIView alloc]initWithFrame:CGRectMake(0,100,rect.size.width,rect.size.height-200)];
    [middleview setBackgroundColor:[UIColor blackColor]];
    
    //增加用户名Label
    UILabel *lab = [[UILabel alloc]init];
    lab.frame = CGRectMake(30, 4, 80, 20);
    lab.backgroundColor = [UIColor colorWithHue:0 saturation:0 brightness:0 alpha:0];
    lab.text = @"罗哥.net";
    lab.textColor = [UIColor whiteColor];
    lab.font = [UIFont fontWithName:@"Arial" size:12.0f];
    
    
    UILabel *lab1 = [[UILabel alloc]init];
    lab1.frame = CGRectMake(30, 4, 80, 20);
    lab1.backgroundColor = [UIColor colorWithHue:0 saturation:0 brightness:0 alpha:0];
    lab1.text = @"罗哥.net";
    lab1.textColor = [UIColor whiteColor];
    lab1.font = [UIFont fontWithName:@"Arial" size:12.0f];
    
    [topview addSubview:lab];
    [middleview addSubview:lab1];
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"topviewbg" ofType:@"png"]]];
    //UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageWithContentsOfFile:@"topviewbg.png"]];
    [topview addSubview:imageView];
    [topview sendSubviewToBack:imageView];
    
    [self.view addSubview:topview];
    [self.view addSubview:middleview];
    //[self.view addSubview:bottomview];
	// Do any additional setup after loading the view.
}

- (void)Clicked:(id)sender{
    NSLog(@"Screen Width is %.f, Height is %.f",rect.size.width,rect.size.height);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
