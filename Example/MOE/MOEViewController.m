//
//  MOEViewController.m
//  MOE
//
//  Created by tthufo on 03/19/2017.
//  Copyright (c) 2017 tthufo. All rights reserved.
//

#import "MOEViewController.h"

@interface MOEViewController ()

@end

@implementation MOEViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)didFace:(id)sender
{
    [[FacebookMOE shareInstance] startLoginFacebookWithCompletion:^(NSString *responseString, id object, int errorCode, NSString *description, NSError *error) {
        
        NSLog(@"%@", responseString);
        
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
