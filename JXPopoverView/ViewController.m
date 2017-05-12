//
//  ViewController.m
//  JXPopoverView
//
//  Created by mac on 17/5/9.
//  Copyright © 2017年 Mr.Gao. All rights reserved.
//

#import "ViewController.h"
#import "JXPopoverView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"JXPopoverView";
}

- (IBAction)showPopView:(id)sender {
    
    JXPopoverView *popoverView = [JXPopoverView popoverView];
    JXPopoverAction *action1 = [JXPopoverAction actionWithTitle:@"钓点" handler:^(JXPopoverAction *action) {
        
        NSLog(@"-------点击了钓点");
        
    }];
    
    JXPopoverAction *action2 = [JXPopoverAction actionWithTitle:@"渔具店" handler:^(JXPopoverAction *action) {
        
        NSLog(@"-------点击了渔具店");
    }];
    
    
    JXPopoverAction *action3 = [JXPopoverAction actionWithTitle:@"饭店" handler:^(JXPopoverAction *action) {
         NSLog(@"-------点击了饭店");
        
    }];
    
    
    JXPopoverAction *action4 = [JXPopoverAction actionWithTitle:@"酒店" handler:^(JXPopoverAction *action) {
        
         NSLog(@"-------点击了酒店");
    }];
//
//    JXPopoverAction *action4 = [JXPopoverAction actionWithImage:[UIImage imageNamed:@"11"] title:@"酒店" handler:^(JXPopoverAction *action) {
//        NSLog(@"-------点击了酒店");
//    }];
    
    
    JXPopoverAction *action5 = [JXPopoverAction actionWithTitle:@"活动" handler:^(JXPopoverAction *action) {
        
         NSLog(@"-------点击了活动");
    }];
    
    [popoverView showToView:sender withActions:@[action1,action2,action3,action4,action5]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
