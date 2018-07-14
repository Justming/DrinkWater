//
//  ViewController.m
//  Water
//
//  Created by harry on 2018/7/10.
//  Copyright © 2018年 harry. All rights reserved.
//

#import "ViewController.h"
#import <UserNotifications/UserNotifications.h>
@interface ViewController ()

@property (nonatomic, strong) UILabel *label;
@property (nonatomic, strong) NSArray *array;
@end

@implementation ViewController

- (void)wakeup {
    
    NSInteger random = arc4random() % _array.count;
    NSLog(@"%ld", random);
//    _label.text = [@[@"你瞅啥。。。", @"再瞅一个试试。。。", @"瞧你个损色！", @"小样儿。。。", @"瞧把你嘚瑟的。。。", @"海燕呐！！！", @"你可长点心吧！"] objectAtIndex:random];
    if (_array.count > random) {
        _label.text = _array[random];
    }
}
- (void)dealloc {
    NSLog(@"ViewController dealloc");
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"AppDidBecomeActiveNotification" object:nil];
}

- (UNNotificationRequest *)requestWithTitle:(NSString *)title Hour:(NSInteger)hour minute:(NSInteger)minute second:(NSInteger)second {
    UNMutableNotificationContent *content = [UNMutableNotificationContent new];
    content.sound = [UNNotificationSound defaultSound];
    content.title = title;
    
    NSDateComponents *components = [NSDateComponents new];
    components.hour = hour;
    components.minute = minute;
    components.second = second;
    
    UNCalendarNotificationTrigger *trigger = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request = [UNNotificationRequest requestWithIdentifier:[NSString stringWithFormat:@"%ld:%ld:%ld", hour, minute, second] content:content trigger:trigger];
    
    return request;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(wakeup) name:@"AppDidBecomeActiveNotification" object:nil];
    self.view.backgroundColor = [UIColor whiteColor];

    NSString *path = [[NSBundle mainBundle] pathForResource:@"answer_CH.plist" ofType:nil];
    _array = [NSArray arrayWithContentsOfFile:path];
    
    _label = [[UILabel alloc] initWithFrame:self.view.bounds];
    _label.font = [UIFont systemFontOfSize:20];
    _label.textAlignment = NSTextAlignmentCenter;
    _label.baselineAdjustment = UIBaselineAdjustmentAlignCenters;
    [self.view addSubview:_label];
    
    UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
    
    UNNotificationRequest *request8 = [self requestWithTitle:@"美好的一天从一杯水开始～" Hour:8 minute:0 second:0];
    UNNotificationRequest *request81 = [self requestWithTitle:@"叫你喝水呢" Hour:8 minute:0 second:1];
    UNNotificationRequest *request82 = [self requestWithTitle:@"你" Hour:8 minute:0 second:2];
    UNNotificationRequest *request83 = [self requestWithTitle:@"瞅" Hour:8 minute:0 second:3];
    UNNotificationRequest *request84 = [self requestWithTitle:@"啥" Hour:8 minute:0 second:4];
    UNNotificationRequest *request85 = [self requestWithTitle:@"🙄️" Hour:8 minute:0 second:5];
    UNNotificationRequest *request10 = [self requestWithTitle:@"多喝水，会更美～" Hour:10 minute:0 second:0];
    UNNotificationRequest *request101 = [self requestWithTitle:@"要" Hour:10 minute:0 second:1];
    UNNotificationRequest *request102 = [self requestWithTitle:@"不" Hour:10 minute:0 second:2];
    UNNotificationRequest *request103 = [self requestWithTitle:@"要" Hour:10 minute:0 second:3];
    UNNotificationRequest *request104 = [self requestWithTitle:@"更" Hour:10 minute:0 second:4];
    UNNotificationRequest *request105 = [self requestWithTitle:@"美" Hour:10 minute:0 second:5];
    UNNotificationRequest *request12 = [self requestWithTitle:@"饭后记得要喝水哦～" Hour:12 minute:0 second:0];
    UNNotificationRequest *request121 = [self requestWithTitle:@"别" Hour:12 minute:0 second:1];
    UNNotificationRequest *request122 = [self requestWithTitle:@"瞅" Hour:12 minute:0 second:2];
    UNNotificationRequest *request123 = [self requestWithTitle:@"我" Hour:12 minute:0 second:3];
    UNNotificationRequest *request124 = [self requestWithTitle:@"了" Hour:12 minute:0 second:4];
    UNNotificationRequest *request125 = [self requestWithTitle:@"🙄️" Hour:12 minute:0 second:5];
    UNNotificationRequest *request14 = [self requestWithTitle:@"一杯水让下午精神起来～" Hour:14 minute:0 second:0];
    UNNotificationRequest *request141 = [self requestWithTitle:@"喝" Hour:14 minute:0 second:1];
    UNNotificationRequest *request142 = [self requestWithTitle:@"水" Hour:14 minute:0 second:2];
    UNNotificationRequest *request143 = [self requestWithTitle:@"更" Hour:14 minute:0 second:3];
    UNNotificationRequest *request144 = [self requestWithTitle:@"精" Hour:14 minute:0 second:4];
    UNNotificationRequest *request145 = [self requestWithTitle:@"神" Hour:14 minute:0 second:5];
    UNNotificationRequest *request16 = [self requestWithTitle:@"工作再忙也要记得喝水～" Hour:16 minute:0 second:0];
    UNNotificationRequest *request161 = [self requestWithTitle:@"😄" Hour:16 minute:0 second:1];
    UNNotificationRequest *request162 = [self requestWithTitle:@"😄😄" Hour:16 minute:0 second:2];
    UNNotificationRequest *request163 = [self requestWithTitle:@"😄😄😄" Hour:16 minute:0 second:3];
    UNNotificationRequest *request164 = [self requestWithTitle:@"😄😄😄😄" Hour:16 minute:0 second:4];
    UNNotificationRequest *request165 = [self requestWithTitle:@"😄😄😄😄😄" Hour:16 minute:0 second:5];
    UNNotificationRequest *request18 = [self requestWithTitle:@"晚饭后记得要喝水哦～" Hour:18 minute:0 second:0];
    UNNotificationRequest *request181 = [self requestWithTitle:@"一杯水" Hour:18 minute:0 second:1];
    UNNotificationRequest *request182 = [self requestWithTitle:@"送" Hour:18 minute:0 second:2];
    UNNotificationRequest *request183 = [self requestWithTitle:@"你" Hour:18 minute:0 second:3];
    UNNotificationRequest *request184 = [self requestWithTitle:@"回" Hour:18 minute:0 second:4];
    UNNotificationRequest *request185 = [self requestWithTitle:@"家" Hour:18 minute:0 second:5];
    UNNotificationRequest *request20 = [self requestWithTitle:@"下班时间怎能缺少一杯水呢～" Hour:20 minute:0 second:0];
    UNNotificationRequest *request201 = [self requestWithTitle:@"不" Hour:20 minute:0 second:1];
    UNNotificationRequest *request202 = [self requestWithTitle:@"要" Hour:20 minute:0 second:2];
    UNNotificationRequest *request203 = [self requestWithTitle:@"只" Hour:20 minute:0 second:3];
    UNNotificationRequest *request204 = [self requestWithTitle:@"记着" Hour:20 minute:0 second:4];
    UNNotificationRequest *request205 = [self requestWithTitle:@"玩游戏哦" Hour:20 minute:0 second:5];
    UNNotificationRequest *request22 = [self requestWithTitle:@"睡前一杯水，做梦都会美～" Hour:22 minute:0 second:0];
    UNNotificationRequest *request221 = [self requestWithTitle:@"😂" Hour:22 minute:0 second:1];
    UNNotificationRequest *request222 = [self requestWithTitle:@"😂😂" Hour:22 minute:0 second:2];
    UNNotificationRequest *request223 = [self requestWithTitle:@"😂😂😂" Hour:22 minute:0 second:3];
    UNNotificationRequest *request224 = [self requestWithTitle:@"😂😂😂😂" Hour:22 minute:0 second:4];
    UNNotificationRequest *request225 = [self requestWithTitle:@"😂😂😂😂😂" Hour:22 minute:0 second:5];

    
    
    
    /*
    UNMutableNotificationContent *content = [UNMutableNotificationContent new];
    content.sound = [UNNotificationSound defaultSound];
    NSDateComponents *components = [NSDateComponents new];
    
    content.title = @"美好的一天从一杯水开始～";
    components.hour = 8;
    components.minute = 0;
    components.second = 0;
    UNCalendarNotificationTrigger *trigger8 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request8 = [UNNotificationRequest requestWithIdentifier:@"8" content:content trigger:trigger8];
    
    content.title = @"叫你喝水呢";
    components.hour = 8;
    components.minute = 0;
    components.second = 1;
    UNCalendarNotificationTrigger *trigger81 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request81 = [UNNotificationRequest requestWithIdentifier:@"81" content:content trigger:trigger81];
    content.title = @"你";
    components.hour = 8;
    components.minute = 0;
    components.second = 2;
    UNCalendarNotificationTrigger *trigger82 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request82 = [UNNotificationRequest requestWithIdentifier:@"82" content:content trigger:trigger82];
    content.title = @"瞅";
    components.hour = 8;
    components.minute = 0;
    components.second = 3;
    UNCalendarNotificationTrigger *trigger83 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request83 = [UNNotificationRequest requestWithIdentifier:@"83" content:content trigger:trigger83];
    content.title = @"啥";
    components.hour = 8;
    components.minute = 0;
    components.second = 4;
    UNCalendarNotificationTrigger *trigger84 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request84 = [UNNotificationRequest requestWithIdentifier:@"84" content:content trigger:trigger84];
    content.title = @"🙄️";
    components.hour = 8;
    components.minute = 0;
    components.second = 5;
    UNCalendarNotificationTrigger *trigger85 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request85 = [UNNotificationRequest requestWithIdentifier:@"85" content:content trigger:trigger85];
    */
    /********************************************************************************/
    /*
    content.title = @"多喝水，会更美～";
    components.hour = 10;
    components.minute = 0;
    components.second = 0;
    UNCalendarNotificationTrigger *trigger10 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request10 = [UNNotificationRequest requestWithIdentifier:@"10" content:content trigger:trigger10];
    content.title = @"要";
    components.hour = 10;
    components.minute = 0;
    components.second = 1;
    UNCalendarNotificationTrigger *trigger101 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request101 = [UNNotificationRequest requestWithIdentifier:@"101" content:content trigger:trigger101];
    content.title = @"不";
    components.hour = 10;
    components.minute = 0;
    components.second = 2;
    UNCalendarNotificationTrigger *trigger102 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request102 = [UNNotificationRequest requestWithIdentifier:@"102" content:content trigger:trigger102];
    content.title = @"要";
    components.hour = 10;
    components.minute = 0;
    components.second = 3;
    UNCalendarNotificationTrigger *trigger103 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request103 = [UNNotificationRequest requestWithIdentifier:@"103" content:content trigger:trigger103];
    content.title = @"更";
    components.hour = 10;
    components.minute = 0;
    components.second = 4;
    UNCalendarNotificationTrigger *trigger104 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request104 = [UNNotificationRequest requestWithIdentifier:@"104" content:content trigger:trigger104];
    content.title = @"美";
    components.hour = 10;
    components.minute = 0;
    components.second = 5;
    UNCalendarNotificationTrigger *trigger105 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request105 = [UNNotificationRequest requestWithIdentifier:@"105" content:content trigger:trigger105];
     */
    /********************************************************************************/
/*
    content.title = @"饭后记得要喝水哦～";
    components.hour = 12;
    components.minute = 0;
    components.second = 0;
    UNCalendarNotificationTrigger *trigger12 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request12 = [UNNotificationRequest requestWithIdentifier:@"12" content:content trigger:trigger12];
    content.title = @"别";
    components.hour = 12;
    components.minute = 0;
    components.second = 1;
    UNCalendarNotificationTrigger *trigger121 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request121 = [UNNotificationRequest requestWithIdentifier:@"121" content:content trigger:trigger121];
    content.title = @"瞅";
    components.hour = 12;
    components.minute = 0;
    components.second = 2;
    UNCalendarNotificationTrigger *trigger122 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request122 = [UNNotificationRequest requestWithIdentifier:@"122" content:content trigger:trigger122];
    content.title = @"我";
    components.hour = 12;
    components.minute = 0;
    components.second = 3;
    UNCalendarNotificationTrigger *trigger123 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request123 = [UNNotificationRequest requestWithIdentifier:@"123" content:content trigger:trigger123];
    content.title = @"了";
    components.hour = 12;
    components.minute = 0;
    components.second = 4;
    UNCalendarNotificationTrigger *trigger124 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request124 = [UNNotificationRequest requestWithIdentifier:@"124" content:content trigger:trigger124];
    content.title = @"🙄️";
    components.hour = 12;
    components.minute = 0;
    components.second = 5;
    UNCalendarNotificationTrigger *trigger125 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request125 = [UNNotificationRequest requestWithIdentifier:@"125" content:content trigger:trigger125];
 */
    /********************************************************************************/
/*
    content.title = @"一杯水让下午精神起来～";
    components.hour = 14;
    components.minute = 0;
    components.second = 0;
    UNCalendarNotificationTrigger *trigger14 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request14 = [UNNotificationRequest requestWithIdentifier:@"14" content:content trigger:trigger14];
    content.title = @"喝";
    components.hour = 14;
    components.minute = 0;
    components.second = 1;
    UNCalendarNotificationTrigger *trigger141 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request141 = [UNNotificationRequest requestWithIdentifier:@"141" content:content trigger:trigger141];
    content.title = @"水";
    components.hour = 14;
    components.minute = 0;
    components.second = 2;
    UNCalendarNotificationTrigger *trigger142 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request142 = [UNNotificationRequest requestWithIdentifier:@"142" content:content trigger:trigger142];
    content.title = @"更";
    components.hour = 14;
    components.minute = 0;
    components.second = 3;
    UNCalendarNotificationTrigger *trigger143 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request143 = [UNNotificationRequest requestWithIdentifier:@"143" content:content trigger:trigger143];
    content.title = @"精";
    components.hour = 14;
    components.minute = 0;
    components.second = 4;
    UNCalendarNotificationTrigger *trigger144 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request144 = [UNNotificationRequest requestWithIdentifier:@"144" content:content trigger:trigger144];
    content.title = @"神";
    components.hour = 14;
    components.minute = 0;
    components.second = 5;
    UNCalendarNotificationTrigger *trigger145 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request145 = [UNNotificationRequest requestWithIdentifier:@"145" content:content trigger:trigger145];
 */
    /********************************************************************************/
/*
    content.title = @"工作再累也要记得喝水～";
    components.hour = 16;
    components.minute = 0;
    components.second = 0;
    UNCalendarNotificationTrigger *trigger16 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request16 = [UNNotificationRequest requestWithIdentifier:@"16" content:content trigger:trigger16];
    content.title = @"😄";
    components.hour = 16;
    components.minute = 0;
    components.second = 1;
    UNCalendarNotificationTrigger *trigger161 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request161 = [UNNotificationRequest requestWithIdentifier:@"161" content:content trigger:trigger161];
    content.title = @"😄😄";
    components.hour = 16;
    components.minute = 0;
    components.second = 2;
    UNCalendarNotificationTrigger *trigger162 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request162 = [UNNotificationRequest requestWithIdentifier:@"162" content:content trigger:trigger162];
    content.title = @"😄😄😄";
    components.hour = 16;
    components.minute = 0;
    components.second = 3;
    UNCalendarNotificationTrigger *trigger163 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request163 = [UNNotificationRequest requestWithIdentifier:@"163" content:content trigger:trigger163];
    content.title = @"😄😄😄😄";
    components.hour = 16;
    components.minute = 0;
    components.second = 4;
    UNCalendarNotificationTrigger *trigger164 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request164 = [UNNotificationRequest requestWithIdentifier:@"164" content:content trigger:trigger164];
    content.title = @"😄😄😄😄😄";
    components.hour = 16;
    components.minute = 0;
    components.second = 5;
    UNCalendarNotificationTrigger *trigger165 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request165 = [UNNotificationRequest requestWithIdentifier:@"165" content:content trigger:trigger165];
 */
    /********************************************************************************/
/*
    content.title = @"晚饭后记得要喝水哦～";
    components.hour = 18;
    components.minute = 0;
    components.second = 0;
    UNCalendarNotificationTrigger *trigger18 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request18 = [UNNotificationRequest requestWithIdentifier:@"18" content:content trigger:trigger18];
    content.title = @"一杯水";
    components.hour = 18;
    components.minute = 0;
    components.second = 1;
    UNCalendarNotificationTrigger *trigger181 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request181 = [UNNotificationRequest requestWithIdentifier:@"181" content:content trigger:trigger181];
    content.title = @"送";
    components.hour = 18;
    components.minute = 0;
    components.second = 2;
    UNCalendarNotificationTrigger *trigger182 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request182 = [UNNotificationRequest requestWithIdentifier:@"182" content:content trigger:trigger182];
    content.title = @"你";
    components.hour = 18;
    components.minute = 0;
    components.second = 3;
    UNCalendarNotificationTrigger *trigger183 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request183 = [UNNotificationRequest requestWithIdentifier:@"183" content:content trigger:trigger183];
    content.title = @"回";
    components.hour = 18;
    components.minute = 0;
    components.second = 4;
    UNCalendarNotificationTrigger *trigger184 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request184 = [UNNotificationRequest requestWithIdentifier:@"184" content:content trigger:trigger184];
    content.title = @"家";
    components.hour = 18;
    components.minute = 0;
    components.second = 5;
    UNCalendarNotificationTrigger *trigger185 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request185 = [UNNotificationRequest requestWithIdentifier:@"185" content:content trigger:trigger185];
 */
    /********************************************************************************/
/*
    content.title = @"下班时间怎能缺少一杯水呢～";
    components.hour = 20;
    components.minute = 0;
    components.second = 0;
    UNCalendarNotificationTrigger *trigger20 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request20 = [UNNotificationRequest requestWithIdentifier:@"20" content:content trigger:trigger20];
    content.title = @"不";
    components.hour = 20;
    components.minute = 0;
    components.second = 1;
    UNCalendarNotificationTrigger *trigger201 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request201 = [UNNotificationRequest requestWithIdentifier:@"201" content:content trigger:trigger201];
    content.title = @"要";
    components.hour = 20;
    components.minute = 0;
    components.second = 2;
    UNCalendarNotificationTrigger *trigger202 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request202 = [UNNotificationRequest requestWithIdentifier:@"202" content:content trigger:trigger202];
    content.title = @"只";
    components.hour = 20;
    components.minute = 0;
    components.second = 3;
    UNCalendarNotificationTrigger *trigger203 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request203 = [UNNotificationRequest requestWithIdentifier:@"203" content:content trigger:trigger203];
    content.title = @"记着";
    components.hour = 20;
    components.minute = 0;
    components.second = 4;
    UNCalendarNotificationTrigger *trigger204 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request204 = [UNNotificationRequest requestWithIdentifier:@"204" content:content trigger:trigger204];
    content.title = @"玩游戏哦";
    components.hour = 20;
    components.minute = 0;
    components.second = 5;
    UNCalendarNotificationTrigger *trigger205 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request205 = [UNNotificationRequest requestWithIdentifier:@"205" content:content trigger:trigger205];
 */
    /********************************************************************************/
/*
    content.title = @"睡前一杯水，做梦都会美～";
    components.hour = 22;
    components.minute = 0;
    components.second = 0;
    UNCalendarNotificationTrigger *trigger22 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request22 = [UNNotificationRequest requestWithIdentifier:@"22" content:content trigger:trigger22];
    content.title = @"😂";
    components.hour = 22;
    components.minute = 0;
    components.second = 1;
    UNCalendarNotificationTrigger *trigger221 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request221 = [UNNotificationRequest requestWithIdentifier:@"221" content:content trigger:trigger221];
    content.title = @"😂😂";
    components.hour = 22;
    components.minute = 0;
    components.second = 2;
    UNCalendarNotificationTrigger *trigger222 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request222 = [UNNotificationRequest requestWithIdentifier:@"222" content:content trigger:trigger222];
    content.title = @"😂😂😂";
    components.hour = 22;
    components.minute = 0;
    components.second = 3;
    UNCalendarNotificationTrigger *trigger223 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request223 = [UNNotificationRequest requestWithIdentifier:@"223" content:content trigger:trigger223];
    content.title = @"😂😂😂😂";
    components.hour = 22;
    components.minute = 0;
    components.second = 4;
    UNCalendarNotificationTrigger *trigger224 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request224 = [UNNotificationRequest requestWithIdentifier:@"224" content:content trigger:trigger224];
    content.title = @"😂😂😂😂😂";
    components.hour = 22;
    components.minute = 0;
    components.second = 5;
    UNCalendarNotificationTrigger *trigger225 = [UNCalendarNotificationTrigger triggerWithDateMatchingComponents:components repeats:YES];
    UNNotificationRequest *request225 = [UNNotificationRequest requestWithIdentifier:@"225" content:content trigger:trigger225];
    */
    
    [center addNotificationRequest:request8 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request81 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request82 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request83 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request84 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request85 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request10 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request101 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request102 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request103 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request104 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request105 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request12 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request121 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request122 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request123 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request124 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request125 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request14 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request141 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request142 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request143 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request144 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request145 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request16 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request161 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request162 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request163 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request164 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request165 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request18 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request181 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request182 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request183 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request184 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request185 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request20 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request201 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request202 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request203 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request204 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request205 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request22 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request221 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request222 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request223 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request224 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [center addNotificationRequest:request225 withCompletionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
}




@end
