//
//  ShadowedButton.m
//  RSSchool_T8
//
//  Created by Dzmitry Navitski on 7/16/21.
//

#import "ShadowedButton.h"
#import "UIColor+CustomColor.h"
#import "UIFont+Montserrat.h"

@interface ShadowedButton()

@end

@implementation ShadowedButton

- (instancetype)initWithTitle:(NSString *)title {
    self = [super initWithFrame:CGRectZero];
    if (self) {
        self.backgroundColor = UIColor.whiteColor;
        [self setTitle:[NSString stringWithFormat:@"    %@    ", title] forState:UIControlStateNormal];
        [self sizeToFit];
        [self setTitleColor:[UIColor lightGreenSea] forState:UIControlStateNormal];
        [self.titleLabel setFont: [UIFont montMediumWithSize:18]];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    if (self.shadowIsAdded != true) {
        self.layer.cornerRadius = 10;
        self.layer.shadowColor = _isPreSelected ? UIColor.lightGreenSea.CGColor : UIColor.blackColor.CGColor;
        self.layer.shadowOpacity = _isPreSelected ? 1 : 0.25;
        self.layer.shadowPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:10].CGPath;
        self.layer.shadowOffset = CGSizeMake(0, 0);
        self.layer.shadowRadius = 2;
        self.layer.shouldRasterize = true;
        
        self.shadowIsAdded = true;
    }
}

@end
