//
//  ViewController.m
//  EventCalendarDemo
//
//  Created by hulinEasy on 2017/3/30.
//  Copyright © 2017年 easy. All rights reserved.
//

#import "ViewController.h"
#import "EventCalendar.h"

@interface ViewController ()

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
//自定义事件事件，自动添加到日历
- (IBAction)testAction:(id)sender {
    
    
    EventCalendar *event = [EventCalendar sharedEventCalendar];
    NSDate *date = [NSDate date];
    [event createEventCalendarTitle:@"测试" location:@"公司" startDate:date endDate:date allDay:YES alarmArray:@[@(-7.f),@(-17.f)]];
    
 
}
//跳转到系统日历
- (IBAction)sysTestAction:(id)sender {
    NSURL *url = [NSURL URLWithString:@"calshow://"];
    [[UIApplication sharedApplication] openURL:url options:nil completionHandler:^(BOOL success) {
        
    }];
}
//跳转到系统提醒事项
- (IBAction)tiIXingAction:(id)sender {
    NSURL *url = [NSURL URLWithString:@"x-apple-reminder://"];
    [[UIApplication sharedApplication] openURL:url options:nil completionHandler:^(BOOL success) {
        
    }];

}

@end
