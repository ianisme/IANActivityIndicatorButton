//
//  IANActivityIndicatorButton.m
//  IANActivityIndicatorButton
//
//  Created by ian on 15/7/21.
//  Copyright (c) 2015年 ian. All rights reserved.
//

#import "IANActivityIndicatorButton.h"

@implementation IANActivityIndicatorButton

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addTarget:self action:@selector(clickAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

- (void)clickAction
{
    if (self.TouchBlock) {
        self.TouchBlock(self);
    }
}

@end
