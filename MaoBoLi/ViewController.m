//
//  ViewController.m
//  MaoBoLi
//
//  Created by AbelSu on 16/5/8.
//  Copyright © 2016年 AbelSu. All rights reserved.
//  毛玻璃效果
//  self.view.bounds.size.width  or  [UIScreen mainScreen].bounds

#import "ViewController.h"
#import "UIImage+ImageEffects.h"

@interface ViewController ()

@property(nonatomic,strong)UIImageView *backimage;//背景图

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.backimage = [[UIImageView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    UIImage *sourceImage = [UIImage imageNamed:@"bgm.jpg"];
    UIImage *lastImage = [sourceImage applyDarkEffect];
    
    self.backimage.image = lastImage;
    self.backimage.userInteractionEnabled = YES;
    [self.view addSubview:self.backimage];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
