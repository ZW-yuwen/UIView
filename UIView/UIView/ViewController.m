//
//  ViewController.m
//  UIView
//
//  Created by 仲雯 on 2020/7/13.
//  Copyright © 2020 仲雯. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIView * view01 = [[UIView alloc] init];
    view01.frame = CGRectMake(100, 100, 100, 100);
    view01.backgroundColor = [UIColor redColor];
    
    UIView * view02 = [[UIView alloc] init];
    view02.frame = CGRectMake(125, 125, 100, 100);
    view02.backgroundColor = [UIColor blueColor];
    
    UIView * view03 = [[UIView alloc] init];
    view03.frame = CGRectMake(150, 150, 100, 100);
    view03.backgroundColor = [UIColor yellowColor];
    
    [self.view addSubview:view01];
    [self.view addSubview:view02];
    [self.view addSubview:view03];
    
    

    [self.view bringSubviewToFront:view03];
    
    
    [self.view sendSubviewToBack:view01];

    UIView * viewFront = self.view.subviews[2];
    UIView * viewBack = self.view.subviews[1];
    
    if(viewBack == view02){
        NSLog(@"nice!");
    }
    /*
    view.frame = CGRectMake(100, 200, 100, 100);
    
    view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:view];
    
    view.hidden = NO;
    
    self.view.backgroundColor = [UIColor blackColor];
    view.alpha = 0.5;
    
    view.opaque = NO;
    [view removeFromSuperview];
*/
}

@end
