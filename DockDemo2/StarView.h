//
//  StarView.h
//  DockDemo2
//
//  Created by 刘小辉 on 15/1/24.
//  Copyright (c) 2015年 maozhi. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol StarDelegate <NSObject>
- (void)starView:(UIView*)starView selectIndex:(NSInteger)index;
@end

@interface StarView : UIView
@property (nonatomic,assign) id<StarDelegate>delegate;
@property (nonatomic,assign) NSString *title;
@end
