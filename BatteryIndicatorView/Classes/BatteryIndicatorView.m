//
//  BatteryIndicatorView.m
//
//  Created by Renjun81 on 12/15/16.
//  Copyright © 2016 renjun cui. All rights reserved.
//

#import "BatteryIndicatorView.h"

@interface BatteryIndicatorView()


@end

@implementation BatteryIndicatorView

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self initialize];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initialize];
    }
    return self;
}

- (void)initialize
{
    self.layer.borderColor = [UIColor grayColor].CGColor;
    self.layer.borderWidth = 1.f;
    self.layer.cornerRadius = self.frame.size.height / 4;
    
    _maxTickCount = 8;
    _curTickCount = 4;
}

- (void) setCurTickCount:(NSInteger)curTickCount {
    self.curTickCount = curTickCount;
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {
    
    float ww = rect.size.width;
    float hh = rect.size.height;
    float tickHeight = hh * 3/5;
    float tickWidth = ww /(_maxTickCount + (_maxTickCount+1.5)*0.8);
    float tickMarginH = tickWidth * 4/5;
    float initX = (ww - tickWidth*_maxTickCount - tickMarginH*(_maxTickCount-1))/2;
    float initY = (hh - tickHeight)/2;
    
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetRGBFillColor(context, 1.0, 1.0, 1.0, 0.0);
    CGContextSetRGBStrokeColor(context, 0.0, 0.0, 0.0, 1.0);
    //CGRect rectangle = CGRectMake(0, 100, 320, 100);
    //CGContextFillRect(context, rectangle);
    //CGContextStrokeRect(context, rectangle);
    
    [[UIColor blackColor] setFill];
    for (NSInteger i = 0; i < self.maxTickCount; i++ ) {
        if ( i < self.curTickCount ) {
            UIRectFill(CGRectMake(initX + i*tickWidth + i*tickMarginH, initY, tickWidth, tickHeight));
        }
        else {
            CGContextStrokeRect(context, CGRectMake(initX + i*tickWidth + i*tickMarginH, initY, tickWidth, tickHeight));
        }
    }
    
}


@end
