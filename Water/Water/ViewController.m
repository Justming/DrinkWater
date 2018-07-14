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
