//
//  IANActivityIndicatorButton.h
//  IANActivityIndicatorButton
//
//  Created by ian on 15/7/21.
//  Copyright (c) 2015年 ian. All rights reserved.
//

#import <UIKit/UIKit.h>

@class IANActivityIndicatorButton;
@interface IANActivityIndicatorButton : UIButton

@property (nonatomic, copy) void(^TouchBlock)(IANActivityIndicatorButton *);

@end
