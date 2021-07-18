//
//  AppButton.m
//  RSSchool_T8
//
//  Created by Dzmitry Navitski on 7/16/21.
//

#import "AppButton.h"
#import "UIColor+CustomColor.h"
#import "UIFont+Montserrat.h"

@implementation AppButton: ShadowedButton

- (void)setHighlighted:(BOOL)highlighted {
    [super setHighlighted:highlighted];
    
    if (highlighted) {
        self.layer.shadowColor = UIColor.lightGreenSea.CGColor;
        self.layer.shadowOpacity = 1;
    } else {
        self.layer.shadowColor = UIColor.blackColor.CGColor;
        self.layer.shadowOpacity = 0.25;
    }
}

- (void)setEnabled:(BOOL)enabled {
    [super setEnabled:enabled];
    
    if (enabled) {
        self.layer.opacity = 1;
    } else {
        self.layer.opacity = 0.5;
    }
}

- (void)setTitle:(NSString *)title forState:(UIControlState)state {
    [super setTitle:title forState:state];
    
    self.shadowIsAdded = false;
}
    
@end
