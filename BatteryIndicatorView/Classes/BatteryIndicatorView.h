//
//  BatteryIndicatorView.h
//  GaitMonitor
//
//  Created by ExpDev on 12/15/16.
//  Copyright © 2016 usr.cn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BatteryIndicatorView : UIView

@property(nonatomic, assign) NSInteger maxTickCount;
@property(nonatomic, assign) NSInteger curTickCount;

@end
