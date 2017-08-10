//
//  CSCViewController.m
//  CSCFramework
//
//  Created by dy140 on 08/09/2017.
//  Copyright (c) 2017 dy140. All rights reserved.
//

#import "CSCViewController.h"
#import <CSCFramework/TestHead.h>
#import <CSCFramework/CSCFileManager.h>
#import <CSCFramework/ProjectHead.h>

@interface CSCViewController ()

@end

@implementation CSCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSLog(@"%@", [CSCFileManager getDocumentsPath]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
