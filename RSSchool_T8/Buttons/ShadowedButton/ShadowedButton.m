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

- (instancetype)initWithTitle:(NSString *)title andSize:(CGSize)size {
    self = [super initWithFrame:CGRectMake(0, 0, size.width, size.height)];
    if (self) {
        [self setTitle:[NSString stringWithFormat:@"%@", title] forState:UIControlStateNormal];
        [self setTitleColor:[UIColor lightGreenSea] forState:UIControlStateNormal];
        [self.titleLabel setFont: [UIFont montMediumWithSize:18]];
        
        self.backgroundColor = UIColor.whiteColor;
        self.layer.cornerRadius = 10;
        self.layer.shadowColor = UIColor.blackColor.CGColor;
        self.layer.shadowOpacity = 0.25;
        self.layer.shadowPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:10].CGPath;
        self.layer.shadowOffset = CGSizeMake(0, 0);
        self.layer.shadowRadius = 2;
    }
    return self;
}

@end
