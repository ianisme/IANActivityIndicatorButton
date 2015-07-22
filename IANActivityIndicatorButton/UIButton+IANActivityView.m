//
//  UIButton+IANActivityView.m
//  IANActivityIndicatorButton
//
//  Created by ian on 15/7/21.
//  Copyright (c) 2015年 ian. All rights reserved.
//

#import "UIButton+IANActivityView.h"

static NSUInteger const indicatorViewSize = 20;
static NSUInteger const indicatorViewTag  = 999;

@implementation UIButton (IANActivityView)

- (void)startButtonActivityIndicatorView
{
    self.backgroundColor = [self.backgroundColor colorWithAlphaComponent:0.4];
    self.enabled = NO;
    UIActivityIndicatorView *indicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
  
    CGRect rect = [self.currentTitle boundingRectWithSize:CGSizeMake(self.bounds.size.width, self.bounds.size.height) options:(NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading) attributes:@{NSFontAttributeName:self.titleLabel.font} context:nil];
    CGSize p = CGRectIntegral(rect).size;
    
    
    indicatorView.frame = CGRectMake(self.bounds.size.width/2 - p.width/2 - indicatorViewSize -5, self.bounds.size.height/2 - indicatorViewSize/2, indicatorViewSize, indicatorViewSize);
    indicatorView.tag = indicatorViewTag;
    indicatorView.hidesWhenStopped = YES;
    [self addSubview:indicatorView];
    [indicatorView startAnimating];
}

- (void)endButtonActivityIndicatorView
{
    UIActivityIndicatorView *indicatorView = (UIActivityIndicatorView *)[self viewWithTag:indicatorViewTag];
    [indicatorView removeFromSuperview];
    self.enabled = YES;
    self.backgroundColor = [self.backgroundColor colorWithAlphaComponent:0.4*(5/2)];
}


@end
