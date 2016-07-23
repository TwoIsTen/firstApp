//
//  ViewController.m
//  fristApp
//
//  Created by 李晨晖 on 16/7/22.
//  Copyright © 2016年 李晨晖. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGRect rect = [[UIScreen mainScreen] bounds];
    CGSize size = rect.size;
    int screenWidth = size.width;
    int screenHeight = size.height;
    UIColor * alphaColor = [[UIColor alloc] initWithRed:1 green:1 blue:1 alpha:0];
    
    [self.view setBackgroundColor:[[UIColor alloc] initWithRed:0.73 green:0.37 blue:1 alpha:1]];
    
//Head Label
    label = [[UILabel alloc] initWithFrame:CGRectMake(0, 25, screenWidth, 30)];
    label.text = @"Eko's frist iOS App!";
    label.backgroundColor = alphaColor;
    label.textColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont fontWithName:[[UIFont familyNames] objectAtIndex:10] size:20];
//    Button
    button = [UIButton buttonWithType:1];
    button.frame = CGRectMake(0, 60, screenWidth, 30);
    [button setTitle:@"这是一个按钮" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor whiteColor];
//    button.backgroundColor = alphaColor;
    button.tintColor = [UIColor blackColor];
    [button addTarget:self action:@selector(ButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    
    //    sliders
    sliderR = [[UISlider alloc] initWithFrame:CGRectMake(0, 100, screenWidth, 30)];
    sliderR.maximumValue = 1;
    sliderR.minimumValue = 0;
    sliderR.value = 0.73;
    sliderR.tintColor = [UIColor redColor];
    sliderR.backgroundColor = alphaColor;
    [sliderR addTarget:self action:@selector(sliderValueChanged) forControlEvents:UIControlEventValueChanged];
    
    sliderG = [[UISlider alloc] initWithFrame:CGRectMake(0, 130, screenWidth, 30)];
    sliderG.maximumValue = 1;
    sliderG.minimumValue = 0;
    sliderG.value = 0.37;
    sliderG.tintColor = [UIColor greenColor];
    sliderG.backgroundColor = alphaColor;
    [sliderG addTarget:self action:@selector(sliderValueChanged) forControlEvents:UIControlEventValueChanged];
    
    sliderB = [[UISlider alloc] initWithFrame:CGRectMake(0, 160, screenWidth, 30)];
    sliderB.maximumValue = 1;
    sliderB.minimumValue = 0;
    sliderB.value = 1;
    sliderB.tintColor = [UIColor blueColor];
    sliderB.backgroundColor = alphaColor;
    [sliderB addTarget:self action:@selector(sliderValueChanged) forControlEvents:UIControlEventValueChanged];
    
    sliderAlpha = [[UISlider alloc] initWithFrame:CGRectMake(0, 190, screenWidth, 30)];
    sliderAlpha.maximumValue = 1;
    sliderAlpha.minimumValue = 0;
    sliderAlpha.value = 1;
    sliderAlpha.tintColor = [UIColor whiteColor];
    sliderAlpha.backgroundColor = alphaColor;
    [sliderAlpha addTarget:self action:@selector(sliderValueChanged) forControlEvents:UIControlEventValueChanged];
    
//    sliderLabel
    sliderLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 220, screenWidth, 30)];
    sliderLabel.text = [NSString stringWithFormat:@"R : %.2f G : %.2f B : %.2f",[sliderR value],[sliderG value],[sliderB value]];
    sliderLabel.backgroundColor = alphaColor;
    sliderLabel.textColor = [UIColor whiteColor];
    sliderLabel.textAlignment = NSTextAlignmentCenter;
    sliderLabel.font = [UIFont fontWithName:[[UIFont familyNames] objectAtIndex:5] size:20];
    
//Add to main view
    [self.view addSubview:label];
    [self.view addSubview:button];
    [self.view addSubview:sliderR];
    [self.view addSubview:sliderG];
    [self.view addSubview:sliderB];
    [self.view addSubview:sliderAlpha];
    [self.view addSubview:sliderLabel];
    
//Release resources
//Automatic reference counting mode
//    [label release];
}


- (void) sliderValueChanged{
    float R = [sliderR value];
    float G = [sliderG value];
    float B = [sliderB value];
    float alpha = [sliderAlpha value];
    sliderLabel.text = [NSString stringWithFormat:@"R : %.2f G : %.2f B : %.2f Alpha : %.2f",R,G,B,alpha];
    sliderLabel.textColor = [[UIColor alloc] initWithRed:1 - R green:1 - G blue:1 - B alpha:1];
    [self.view setBackgroundColor:[[UIColor alloc] initWithRed:R green:G blue:B alpha:alpha]];
    
}
- (void) ButtonPressed{
    UIAlertController * alertA = [UIAlertController alertControllerWithTitle:@"我的视图" message:@"哈哈哈哈😂" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {}];
    UIAlertAction* cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault
                                                         handler:^(UIAlertAction * action){}];
    [alertA addAction:okAction];
    [alertA addAction:cancelAction];
    [self presentViewController:alertA animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
