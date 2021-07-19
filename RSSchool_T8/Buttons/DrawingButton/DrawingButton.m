//
//  DrawingButton.m
//  RSSchool_T8
//
//  Created by Dzmitry Navitski on 7/17/21.
//

#import "DrawingButton.h"
#import "UIColor+CustomColor.h"

@implementation DrawingButton

@synthesize drawing = _drawing;

- (void)setDrawing:(DrawingType) drawing {
    _drawing = drawing;
}

- (DrawingType)drawing {
    return _drawing;
}

- (void)setSelected:(BOOL)selected {
    [super setSelected:selected];
    
    if (selected) {
        self.layer.shadowColor = UIColor.lightGreenSea.CGColor;
        self.layer.shadowOpacity = 1;
    } else {
        self.layer.shadowColor = UIColor.blackColor.CGColor;
        self.layer.shadowOpacity = 0.25;
    }
}

@end
