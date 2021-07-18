//
//  ShadowedButton.h
//  RSSchool_T8
//
//  Created by Dzmitry Navitski on 7/16/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ShadowedButton : UIButton

@property BOOL shadowIsAdded;
@property BOOL isPreSelected;
- (instancetype)initWithTitle:(NSString *)title;

@end

NS_ASSUME_NONNULL_END
