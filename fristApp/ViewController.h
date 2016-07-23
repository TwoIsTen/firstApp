//
//  ViewController.h
//  fristApp
//
//  Created by 李晨晖 on 16/7/22.
//  Copyright © 2016年 李晨晖. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    UILabel * label;//顶部Label
    UIButton * button;//按钮
    UISlider * sliderR;//红进度条
    UISlider * sliderG;//绿进度条
    UISlider * sliderB;//蓝进度条
    UISlider * sliderAlpha;//不透明度进度条
    UILabel * sliderLabel;
}

- (void) ButtonPressed;
- (void) sliderValueChanged;
@end

