//
//  PosRootViewController.m
//  PosProject
//
//  Created by wu xiaofang on 13-6-7.
//  Copyright (c) 2013年 xiaofang.wu. All rights reserved.
//

#import "PosRootViewController.h"

@interface PosRootViewController ()

@end

@implementation PosRootViewController

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
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)releaseAllSubViews
{
    [super releaseAllSubViews];
}


@end
