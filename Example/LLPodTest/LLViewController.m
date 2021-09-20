//
//  LLViewController.m
//  LLPodTest
//
//  Created by bullerliu on 09/20/2021.
//  Copyright (c) 2021 bullerliu. All rights reserved.
//

#import "LLViewController.h"
#import <LLPodTest/ZAFENativebridgTool.h>
@interface LLViewController ()

@end

@implementation LLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    ZAFENativebridgTool *tool = [[ZAFENativebridgTool alloc] initZAFENativebridgTool];
    [tool copySting:@"111" Success:^(UIPasteboard * _Nonnull Pasteboard, NSString * _Nonnull successStr) {
        
    } Failure:^(UIPasteboard * _Nonnull Pasteboard, NSString * _Nonnull errorStr) {
        
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
