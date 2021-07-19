//
//  Head.m
//  RSSchool_T8
//
//  Created by Dzmitry Navitski on 7/19/21.
//

#import "Head.h"

@implementation Head

- (instancetype)init
{
    self = [super init];
    if (self) {
        UIBezierPath* bezierPath = [UIBezierPath bezierPath];
        [bezierPath moveToPoint: CGPointMake(62.5, 21)];
        [bezierPath addLineToPoint: CGPointMake(78, 81)];
        [bezierPath addLineToPoint: CGPointMake(90, 104)];
        [bezierPath addLineToPoint: CGPointMake(107.5, 123.5)];
        [bezierPath addLineToPoint: CGPointMake(134.5, 146)];
        [bezierPath addLineToPoint: CGPointMake(158, 151.5)];
        [bezierPath addLineToPoint: CGPointMake(194, 134)];
        [bezierPath addLineToPoint: CGPointMake(221, 104)];
        [bezierPath addLineToPoint: CGPointMake(229.5, 92)];
        [bezierPath addLineToPoint: CGPointMake(229.5, 69.5)];
        [bezierPath addLineToPoint: CGPointMake(231.5, 42.5)];
        [bezierPath addLineToPoint: CGPointMake(219.5, 32.5)];
        [bezierPath addLineToPoint: CGPointMake(203, 35.5)];
        [bezierPath addLineToPoint: CGPointMake(192, 52.5)];
        [bezierPath addLineToPoint: CGPointMake(190, 75.5)];
        [bezierPath addLineToPoint: CGPointMake(194, 88)];

        UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
        [bezier2Path moveToPoint: CGPointMake(185, 92)];
        [bezier2Path addLineToPoint: CGPointMake(176.5, 90.5)];
        [bezier2Path addLineToPoint: CGPointMake(167, 92.5)];
        [bezier2Path addLineToPoint: CGPointMake(159, 93.5)];
        [bezier2Path addLineToPoint: CGPointMake(149.5, 92.5)];
        [bezier2Path addLineToPoint: CGPointMake(141, 91)];
        [bezier2Path addLineToPoint: CGPointMake(134.5, 90.5)];
        [bezier2Path addLineToPoint: CGPointMake(127, 92)];
        [bezier2Path addLineToPoint: CGPointMake(122.5, 94)];
        [bezier2Path addLineToPoint: CGPointMake(128.5, 96.5)];
        [bezier2Path addLineToPoint: CGPointMake(133, 100)];
        [bezier2Path addLineToPoint: CGPointMake(137.5, 105)];
        [bezier2Path addLineToPoint: CGPointMake(143.5, 107.5)];
        [bezier2Path addLineToPoint: CGPointMake(151, 108.5)];
        [bezier2Path addLineToPoint: CGPointMake(158, 107.5)];
        [bezier2Path addLineToPoint: CGPointMake(165.5, 108.5)];
        [bezier2Path addLineToPoint: CGPointMake(171.5, 107.5)];
        [bezier2Path addLineToPoint: CGPointMake(178, 103.5)];
        [bezier2Path addLineToPoint: CGPointMake(185, 95.5)];
        [bezier2Path addLineToPoint: CGPointMake(189.5, 89.5)];
        [bezier2Path addLineToPoint: CGPointMake(181.5, 88.5)];
        [bezier2Path addLineToPoint: CGPointMake(172.5, 87.5)];
        [bezier2Path addLineToPoint: CGPointMake(163.5, 85.5)];
        [bezier2Path addLineToPoint: CGPointMake(155, 85)];
        [bezier2Path addLineToPoint: CGPointMake(145, 86.5)];
        [bezier2Path addLineToPoint: CGPointMake(136, 88.5)];
        [bezier2Path addLineToPoint: CGPointMake(126, 89.5)];
        [bezier2Path addLineToPoint: CGPointMake(119, 89)];
        [bezier2Path addLineToPoint: CGPointMake(128.5, 83)];
        [bezier2Path addLineToPoint: CGPointMake(137.5, 76.5)];
        [bezier2Path addLineToPoint: CGPointMake(143.5, 73)];
        [bezier2Path addLineToPoint: CGPointMake(148.5, 74.5)];
        [bezier2Path addLineToPoint: CGPointMake(154, 76.5)];
        [bezier2Path addLineToPoint: CGPointMake(160.5, 75.5)];
        [bezier2Path addLineToPoint: CGPointMake(167, 74.5)];
        [bezier2Path addLineToPoint: CGPointMake(172.5, 74.5)];
        [bezier2Path addLineToPoint: CGPointMake(175.5, 76.5)];
        [bezier2Path addLineToPoint: CGPointMake(180.5, 81.5)];
        [bezier2Path addLineToPoint: CGPointMake(188, 86)];

        UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
        [bezier3Path moveToPoint: CGPointMake(190.5, 94.5)];
        [bezier3Path addLineToPoint: CGPointMake(195, 100.5)];
        [bezier3Path addLineToPoint: CGPointMake(197.5, 107)];
        [bezier3Path addLineToPoint: CGPointMake(194, 116)];
        [bezier3Path addLineToPoint: CGPointMake(187, 124.5)];
        [bezier3Path addLineToPoint: CGPointMake(178, 131.5)];
        [bezier3Path addLineToPoint: CGPointMake(168.5, 124.5)];
        [bezier3Path addLineToPoint: CGPointMake(158, 120.5)];
        [bezier3Path addLineToPoint: CGPointMake(148.5, 120.5)];
        [bezier3Path addLineToPoint: CGPointMake(136.5, 124.5)];
        [bezier3Path addLineToPoint: CGPointMake(128.5, 134)];
        [bezier3Path addLineToPoint: CGPointMake(122, 146.5)];
        [bezier3Path addLineToPoint: CGPointMake(110.5, 139.5)];
        [bezier3Path addLineToPoint: CGPointMake(102.5, 129.5)];
        [bezier3Path addLineToPoint: CGPointMake(94, 120.5)];
        [bezier3Path addLineToPoint: CGPointMake(94, 134)];
        [bezier3Path addLineToPoint: CGPointMake(94, 162.5)];
        [bezier3Path addLineToPoint: CGPointMake(94, 179.5)];
        [bezier3Path addLineToPoint: CGPointMake(87, 191)];
        [bezier3Path addLineToPoint: CGPointMake(75.5, 199.5)];
        [bezier3Path addLineToPoint: CGPointMake(64.5, 206.5)];
        [bezier3Path addLineToPoint: CGPointMake(82, 213)];
        [bezier3Path addLineToPoint: CGPointMake(95.5, 221.5)];
        [bezier3Path addLineToPoint: CGPointMake(106, 235.5)];
        [bezier3Path addLineToPoint: CGPointMake(120, 253)];
        [bezier3Path addLineToPoint: CGPointMake(139, 271)];
        [bezier3Path addLineToPoint: CGPointMake(158, 277.5)];
        [bezier3Path addLineToPoint: CGPointMake(172, 277.5)];
        [bezier3Path addLineToPoint: CGPointMake(187, 269.5)];
        [bezier3Path addLineToPoint: CGPointMake(200.5, 253)];
        [bezier3Path addLineToPoint: CGPointMake(210.5, 231.5)];
        [bezier3Path addLineToPoint: CGPointMake(220, 215.5)];
        [bezier3Path addLineToPoint: CGPointMake(234.5, 209)];
        [bezier3Path addLineToPoint: CGPointMake(238, 209)];
        [bezier3Path addLineToPoint: CGPointMake(231.5, 193.5)];
        [bezier3Path addLineToPoint: CGPointMake(222, 165)];
        [bezier3Path addLineToPoint: CGPointMake(220, 142)];
        [bezier3Path addLineToPoint: CGPointMake(220, 118.5)];
        [bezier3Path addLineToPoint: CGPointMake(213, 129.5)];
        [bezier3Path addLineToPoint: CGPointMake(205, 137.5)];
        [bezier3Path addLineToPoint: CGPointMake(197.5, 146.5)];
        [bezier3Path addLineToPoint: CGPointMake(181, 162.5)];
        [bezier3Path addLineToPoint: CGPointMake(171, 177)];
        [bezier3Path addLineToPoint: CGPointMake(162.5, 198.5)];
        [bezier3Path addLineToPoint: CGPointMake(159.5, 224.5)];
        [bezier3Path addLineToPoint: CGPointMake(159.5, 253)];
        [bezier3Path addLineToPoint: CGPointMake(159.5, 271)];
        
        self.paths = [[NSArray alloc] initWithObjects: bezierPath, bezier2Path, bezier3Path, nil];
        self.layers = [NSMutableArray new];
        
        for (UIBezierPath *path in self.paths) {
            CAShapeLayer *layer = [CAShapeLayer layer];
            layer.fillColor = UIColor.clearColor.CGColor;
            layer.lineCap = kCALineCapRound;
            [layer setPath: path.CGPath];
            layer.strokeEnd = 0;
            [self.layers addObject:layer];
        }
    }
    return self;
}

@end
