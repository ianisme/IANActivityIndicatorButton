//
//  ViewController.m
//  IANActivityIndicatorButton
//
//  Created by ian on 15/7/21.
//  Copyright (c) 2015年 ian. All rights reserved.
//

#import "ViewController.h"
#import "IANActivityIndicatorButton.h"
#import "UIButton+IANActivityView.h"

@interface ViewController ()
{
    IANActivityIndicatorButton *_btn;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _btn = [[IANActivityIndicatorButton alloc] init];
    _btn.frame = CGRectMake(15, 100, self.view.bounds.size.width - 30, 80);
    _btn.backgroundColor = [UIColor redColor];
    [_btn setTitle:@"这是一个神奇的button" forState:UIControlStateNormal];
    _btn.layer.cornerRadius = 10;
    [self.view addSubview:_btn];
    _btn.tag = 2423;
    __weak typeof(self) weakSelf = self;
    _btn.TouchBlock = ^(IANActivityIndicatorButton *myButton){
        __strong typeof(weakSelf) strongSelf = weakSelf;
        NSLog(@"测试:%d",myButton.tag);
        [myButton startButtonActivityIndicatorView];
        
        
        [strongSelf performSelector:@selector(after) withObject:strongSelf afterDelay:5];
    };
    
}

- (void)after
{
    [_btn endButtonActivityIndicatorView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
