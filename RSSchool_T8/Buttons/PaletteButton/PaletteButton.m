//
//  PaletteButton.m
//  RSSchool_T8
//
//  Created by Dzmitry Navitski on 7/16/21.
//

#import "PaletteButton.h"
#import "UIColor+CustomColor.h"

@interface PaletteButton()

@property CAShapeLayer *notSelectedLayer;
@property CAShapeLayer *isSelectedLayer;

@end

@implementation PaletteButton

-(instancetype)init {
    self = [super initWithTitle:@"" andSize:CGSizeMake(40, 40)];
    UIBezierPath *outerPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, 40, 40) cornerRadius:8];
    UIBezierPath *innerPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(2, 2, 36, 36) cornerRadius:8];
    [outerPath appendPath:innerPath];
    [outerPath setUsesEvenOddFillRule:true];
    
    self.isSelectedLayer = [CAShapeLayer layer];
    self.isSelectedLayer.path = outerPath.CGPath;
    self.isSelectedLayer.fillRule = kCAFillRuleEvenOdd;
    self.isSelectedLayer.fillColor = [UIColor whiteColor].CGColor;
    
    UIBezierPath *outerPathSelected = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, 40, 40) cornerRadius:8];
    UIBezierPath *innerPathSelected = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(8, 8, 24, 24) cornerRadius:6];
    [outerPathSelected appendPath:innerPathSelected];
    [outerPathSelected setUsesEvenOddFillRule:true];

    self.notSelectedLayer = [CAShapeLayer layer];
    self.notSelectedLayer.path = outerPathSelected.CGPath;
    self.notSelectedLayer.fillRule = kCAFillRuleEvenOdd;
    self.notSelectedLayer.fillColor = [UIColor whiteColor].CGColor;
    
    return self;
}

- (void)setSelected:(BOOL)selected {
    [super setSelected:selected];
    
    if (selected) {
        [self.notSelectedLayer removeFromSuperlayer];
        [self.layer addSublayer:self.isSelectedLayer];
    } else {
        [self.isSelectedLayer removeFromSuperlayer];
        [self.layer addSublayer:self.notSelectedLayer];
    }
}

@synthesize backgroundColor = _backgroundColor;

- (UIColor *)backgroundColor {
    return _backgroundColor;
}

-(void)setBackgroundColor:(UIColor *)backgroundColor {
    [super setBackgroundColor:backgroundColor];
    _backgroundColor = backgroundColor;
}

@end
