//
//  Tree.m
//  RSSchool_T8
//
//  Created by Dzmitry Navitski on 7/19/21.
//

#import "Tree.h"

@implementation Tree

- (instancetype)init
{
    self = [super init];
    if (self) {
        UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
        [bezier2Path moveToPoint: CGPointMake(213.19, 65.76)];
        [bezier2Path addLineToPoint: CGPointMake(212.47, 65.08)];
        [bezier2Path addLineToPoint: CGPointMake(211.64, 65.96)];
        [bezier2Path addLineToPoint: CGPointMake(212.66, 66.61)];
        [bezier2Path addLineToPoint: CGPointMake(213.19, 65.76)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(195.97, 42.55)];
        [bezier2Path addLineToPoint: CGPointMake(194.97, 42.63)];
        [bezier2Path addLineToPoint: CGPointMake(195.06, 43.81)];
        [bezier2Path addLineToPoint: CGPointMake(196.21, 43.52)];
        [bezier2Path addLineToPoint: CGPointMake(195.97, 42.55)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(171.6, 30.77)];
        [bezier2Path addLineToPoint: CGPointMake(170.97, 31.55)];
        [bezier2Path addLineToPoint: CGPointMake(171.46, 31.94)];
        [bezier2Path addLineToPoint: CGPointMake(172.03, 31.67)];
        [bezier2Path addLineToPoint: CGPointMake(171.6, 30.77)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(155.97, 27.55)];
        [bezier2Path addLineToPoint: CGPointMake(154.97, 27.63)];
        [bezier2Path addLineToPoint: CGPointMake(155.06, 28.81)];
        [bezier2Path addLineToPoint: CGPointMake(156.21, 28.52)];
        [bezier2Path addLineToPoint: CGPointMake(155.97, 27.55)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(125.59, 20.7)];
        [bezier2Path addLineToPoint: CGPointMake(125.31, 21.66)];
        [bezier2Path addLineToPoint: CGPointMake(125.98, 21.85)];
        [bezier2Path addLineToPoint: CGPointMake(126.39, 21.29)];
        [bezier2Path addLineToPoint: CGPointMake(125.59, 20.7)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(110.81, 22.77)];
        [bezier2Path addLineToPoint: CGPointMake(110.52, 23.72)];
        [bezier2Path addLineToPoint: CGPointMake(110.96, 23.85)];
        [bezier2Path addLineToPoint: CGPointMake(111.34, 23.61)];
        [bezier2Path addLineToPoint: CGPointMake(110.81, 22.77)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(91.59, 28.7)];
        [bezier2Path addLineToPoint: CGPointMake(91.31, 29.66)];
        [bezier2Path addLineToPoint: CGPointMake(91.98, 29.85)];
        [bezier2Path addLineToPoint: CGPointMake(92.4, 29.29)];
        [bezier2Path addLineToPoint: CGPointMake(91.59, 28.7)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(70.01, 43.02)];
        [bezier2Path addLineToPoint: CGPointMake(70.72, 43.73)];
        [bezier2Path addLineToPoint: CGPointMake(71.03, 43.42)];
        [bezier2Path addLineToPoint: CGPointMake(71.01, 42.98)];
        [bezier2Path addLineToPoint: CGPointMake(70.01, 43.02)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(68.59, 44.7)];
        [bezier2Path addLineToPoint: CGPointMake(68.31, 45.66)];
        [bezier2Path addLineToPoint: CGPointMake(68.98, 45.85)];
        [bezier2Path addLineToPoint: CGPointMake(69.4, 45.29)];
        [bezier2Path addLineToPoint: CGPointMake(68.59, 44.7)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(48.58, 64.71)];
        [bezier2Path addLineToPoint: CGPointMake(49.39, 65.29)];
        [bezier2Path addLineToPoint: CGPointMake(49.76, 64.79)];
        [bezier2Path addLineToPoint: CGPointMake(49.46, 64.23)];
        [bezier2Path addLineToPoint: CGPointMake(48.58, 64.71)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(47.19, 77.92)];
        [bezier2Path addLineToPoint: CGPointMake(47.96, 78.57)];
        [bezier2Path addLineToPoint: CGPointMake(48.37, 78.08)];
        [bezier2Path addLineToPoint: CGPointMake(48.1, 77.51)];
        [bezier2Path addLineToPoint: CGPointMake(47.19, 77.92)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(45.58, 92.71)];
        [bezier2Path addLineToPoint: CGPointMake(46.39, 93.29)];
        [bezier2Path addLineToPoint: CGPointMake(46.76, 92.79)];
        [bezier2Path addLineToPoint: CGPointMake(46.46, 92.23)];
        [bezier2Path addLineToPoint: CGPointMake(45.58, 92.71)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(61.68, 114.88)];
        [bezier2Path addLineToPoint: CGPointMake(62.55, 114.39)];
        [bezier2Path addLineToPoint: CGPointMake(62.22, 113.81)];
        [bezier2Path addLineToPoint: CGPointMake(61.56, 113.88)];
        [bezier2Path addLineToPoint: CGPointMake(61.68, 114.88)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(84.35, 121.26)];
        [bezier2Path addLineToPoint: CGPointMake(85.25, 120.81)];
        [bezier2Path addLineToPoint: CGPointMake(84.81, 119.93)];
        [bezier2Path addLineToPoint: CGPointMake(83.92, 120.35)];
        [bezier2Path addLineToPoint: CGPointMake(84.35, 121.26)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(101.68, 129.88)];
        [bezier2Path addLineToPoint: CGPointMake(102.55, 129.39)];
        [bezier2Path addLineToPoint: CGPointMake(102.22, 128.81)];
        [bezier2Path addLineToPoint: CGPointMake(101.56, 128.88)];
        [bezier2Path addLineToPoint: CGPointMake(101.68, 129.88)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(125, 135.93)];
        [bezier2Path addLineToPoint: CGPointMake(125.47, 135.05)];
        [bezier2Path addLineToPoint: CGPointMake(125, 134.8)];
        [bezier2Path addLineToPoint: CGPointMake(124.53, 135.05)];
        [bezier2Path addLineToPoint: CGPointMake(125, 135.93)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(129.66, 137.6)];
        [bezier2Path addLineToPoint: CGPointMake(130.39, 136.93)];
        [bezier2Path addLineToPoint: CGPointMake(130.18, 136.69)];
        [bezier2Path addLineToPoint: CGPointMake(129.86, 136.63)];
        [bezier2Path addLineToPoint: CGPointMake(129.66, 137.6)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(150.35, 141.26)];
        [bezier2Path addLineToPoint: CGPointMake(151.25, 140.81)];
        [bezier2Path addLineToPoint: CGPointMake(150.81, 139.93)];
        [bezier2Path addLineToPoint: CGPointMake(149.92, 140.35)];
        [bezier2Path addLineToPoint: CGPointMake(150.35, 141.26)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(167.68, 149.88)];
        [bezier2Path addLineToPoint: CGPointMake(168.55, 149.39)];
        [bezier2Path addLineToPoint: CGPointMake(168.22, 148.81)];
        [bezier2Path addLineToPoint: CGPointMake(167.56, 148.88)];
        [bezier2Path addLineToPoint: CGPointMake(167.68, 149.88)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(191, 155.93)];
        [bezier2Path addLineToPoint: CGPointMake(191.47, 155.05)];
        [bezier2Path addLineToPoint: CGPointMake(191, 154.8)];
        [bezier2Path addLineToPoint: CGPointMake(190.53, 155.05)];
        [bezier2Path addLineToPoint: CGPointMake(191, 155.93)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(215.99, 142.99)];
        [bezier2Path addLineToPoint: CGPointMake(216.02, 141.99)];
        [bezier2Path addLineToPoint: CGPointMake(214.95, 141.97)];
        [bezier2Path addLineToPoint: CGPointMake(214.99, 143.03)];
        [bezier2Path addLineToPoint: CGPointMake(215.99, 142.99)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(225, 140.93)];
        [bezier2Path addLineToPoint: CGPointMake(225.47, 140.05)];
        [bezier2Path addLineToPoint: CGPointMake(225, 139.8)];
        [bezier2Path addLineToPoint: CGPointMake(224.53, 140.05)];
        [bezier2Path addLineToPoint: CGPointMake(225, 140.93)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(249.66, 125.56)];
        [bezier2Path addLineToPoint: CGPointMake(249.15, 124.7)];
        [bezier2Path addLineToPoint: CGPointMake(248.52, 125.07)];
        [bezier2Path addLineToPoint: CGPointMake(248.69, 125.79)];
        [bezier2Path addLineToPoint: CGPointMake(249.66, 125.56)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(253.19, 104.23)];
        [bezier2Path addLineToPoint: CGPointMake(252.66, 103.39)];
        [bezier2Path addLineToPoint: CGPointMake(251.64, 104.04)];
        [bezier2Path addLineToPoint: CGPointMake(252.47, 104.92)];
        [bezier2Path addLineToPoint: CGPointMake(253.19, 104.23)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(238.97, 78.55)];
        [bezier2Path addLineToPoint: CGPointMake(237.97, 78.63)];
        [bezier2Path addLineToPoint: CGPointMake(238.06, 79.81)];
        [bezier2Path addLineToPoint: CGPointMake(239.21, 79.52)];
        [bezier2Path addLineToPoint: CGPointMake(238.97, 78.55)];
        [bezier2Path closePath];
        [bezier2Path moveToPoint: CGPointMake(214.6, 66.77)];
        [bezier2Path addLineToPoint: CGPointMake(213.97, 67.55)];
        [bezier2Path addLineToPoint: CGPointMake(214.46, 67.94)];
        [bezier2Path addLineToPoint: CGPointMake(215.03, 67.67)];
        [bezier2Path addLineToPoint: CGPointMake(214.6, 66.77)];
        [bezier2Path closePath];
        
        [bezier2Path moveToPoint: CGPointMake(213.92, 66.45)];
        [bezier2Path addCurveToPoint: CGPointMake(218, 56.5) controlPoint1: CGPointMake(216.45, 63.77) controlPoint2: CGPointMake(218, 60.3)];
        [bezier2Path moveToPoint: CGPointMake(218, 56.5)];
        [bezier2Path addCurveToPoint: CGPointMake(200.5, 41) controlPoint1: CGPointMake(218, 47.82) controlPoint2: CGPointMake(210.04, 41)];

        [bezier2Path moveToPoint: CGPointMake(200.5, 41)];
        [bezier2Path addCurveToPoint: CGPointMake(195.72, 41.58) controlPoint1: CGPointMake(198.84, 41) controlPoint2: CGPointMake(197.24, 41.2)];

        [bezier2Path moveToPoint: CGPointMake(196.96, 42.48)];
        [bezier2Path addCurveToPoint: CGPointMake(179.5, 28) controlPoint1: CGPointMake(196.36, 34.29) controlPoint2: CGPointMake(188.67, 28)];

        [bezier2Path moveToPoint: CGPointMake(179.5, 28)];
        [bezier2Path addCurveToPoint: CGPointMake(171.16, 29.87) controlPoint1: CGPointMake(176.49, 28) controlPoint2: CGPointMake(173.65, 28.67)];

        [bezier2Path moveToPoint: CGPointMake(172.22, 29.99)];
        [bezier2Path addCurveToPoint: CGPointMake(160.5, 26) controlPoint1: CGPointMake(169.11, 27.5) controlPoint2: CGPointMake(165, 26)];

        [bezier2Path moveToPoint: CGPointMake(160.5, 26)];
        [bezier2Path addCurveToPoint: CGPointMake(155.72, 26.58) controlPoint1: CGPointMake(158.84, 26) controlPoint2: CGPointMake(157.24, 26.2)];

        [bezier2Path moveToPoint: CGPointMake(156.96, 27.48)];
        [bezier2Path addCurveToPoint: CGPointMake(139.5, 13) controlPoint1: CGPointMake(156.36, 19.29) controlPoint2: CGPointMake(148.67, 13)];

        [bezier2Path moveToPoint: CGPointMake(139.5, 13)];
        [bezier2Path addCurveToPoint: CGPointMake(124.78, 20.11) controlPoint1: CGPointMake(133.35, 13) controlPoint2: CGPointMake(127.91, 15.81)];

        [bezier2Path moveToPoint: CGPointMake(125.86, 19.74)];
        [bezier2Path addCurveToPoint: CGPointMake(120.5, 19) controlPoint1: CGPointMake(124.17, 19.26) controlPoint2: CGPointMake(122.37, 19)];

        [bezier2Path moveToPoint: CGPointMake(120.5, 19)];
        [bezier2Path addCurveToPoint: CGPointMake(110.27, 21.92) controlPoint1: CGPointMake(116.69, 19) controlPoint2: CGPointMake(113.15, 20.08)];

        [bezier2Path moveToPoint: CGPointMake(111.09, 21.81)];
        [bezier2Path addCurveToPoint: CGPointMake(105.5, 21) controlPoint1: CGPointMake(109.33, 21.28) controlPoint2: CGPointMake(107.45, 21)];

        [bezier2Path moveToPoint: CGPointMake(105.5, 21)];
        [bezier2Path addCurveToPoint: CGPointMake(90.78, 28.11) controlPoint1: CGPointMake(99.35, 21) controlPoint2: CGPointMake(93.91, 23.81)];

        [bezier2Path moveToPoint: CGPointMake(91.86, 27.74)];
        [bezier2Path addCurveToPoint: CGPointMake(86.5, 27) controlPoint1: CGPointMake(90.17, 27.26) controlPoint2: CGPointMake(88.37, 27)];

        [bezier2Path moveToPoint: CGPointMake(86.5, 27)];
        [bezier2Path addCurveToPoint: CGPointMake(69, 42.5) controlPoint1: CGPointMake(76.96, 27) controlPoint2: CGPointMake(69, 33.82)];

        [bezier2Path moveToPoint: CGPointMake(69, 42.5)];
        [bezier2Path addCurveToPoint: CGPointMake(69.01, 43.06) controlPoint1: CGPointMake(69, 42.69) controlPoint2: CGPointMake(69, 42.88)];

        [bezier2Path moveToPoint: CGPointMake(69.3, 42.32)];
        [bezier2Path addCurveToPoint: CGPointMake(67.78, 44.11) controlPoint1: CGPointMake(68.75, 42.88) controlPoint2: CGPointMake(68.24, 43.48)];

        [bezier2Path moveToPoint: CGPointMake(68.86, 43.74)];
        [bezier2Path addCurveToPoint: CGPointMake(63.5, 43) controlPoint1: CGPointMake(67.17, 43.26) controlPoint2: CGPointMake(65.37, 43)];

        [bezier2Path moveToPoint: CGPointMake(63.5, 43)];
        [bezier2Path addCurveToPoint: CGPointMake(46, 58.5) controlPoint1: CGPointMake(53.96, 43) controlPoint2: CGPointMake(46, 49.82)];

        [bezier2Path moveToPoint: CGPointMake(46, 58.5)];
        [bezier2Path addCurveToPoint: CGPointMake(47.7, 65.18) controlPoint1: CGPointMake(46, 60.89) controlPoint2: CGPointMake(46.61, 63.16)];

        [bezier2Path moveToPoint: CGPointMake(47.77, 64.12)];
        [bezier2Path addCurveToPoint: CGPointMake(45, 72.5) controlPoint1: CGPointMake(46.02, 66.53) controlPoint2: CGPointMake(45, 69.4)];

        [bezier2Path moveToPoint: CGPointMake(45, 72.5)];
        [bezier2Path addCurveToPoint: CGPointMake(46.28, 78.34) controlPoint1: CGPointMake(45, 74.57) controlPoint2: CGPointMake(45.46, 76.54)];

        [bezier2Path moveToPoint: CGPointMake(46.43, 77.28)];
        [bezier2Path addCurveToPoint: CGPointMake(43, 86.5) controlPoint1: CGPointMake(44.28, 79.85) controlPoint2: CGPointMake(43, 83.04)];

        [bezier2Path moveToPoint: CGPointMake(43, 86.5)];
        [bezier2Path addCurveToPoint: CGPointMake(44.7, 93.18) controlPoint1: CGPointMake(43, 88.89) controlPoint2: CGPointMake(43.61, 91.16)];

        [bezier2Path moveToPoint: CGPointMake(44.77, 92.12)];
        [bezier2Path addCurveToPoint: CGPointMake(42, 100.5) controlPoint1: CGPointMake(43.02, 94.53) controlPoint2: CGPointMake(42, 97.4)];

        [bezier2Path moveToPoint: CGPointMake(42, 100.5)];
        [bezier2Path addCurveToPoint: CGPointMake(59.5, 116) controlPoint1: CGPointMake(42, 109.18) controlPoint2: CGPointMake(49.96, 116)];

        [bezier2Path moveToPoint: CGPointMake(59.5, 116)];
        [bezier2Path addCurveToPoint: CGPointMake(61.79, 115.87) controlPoint1: CGPointMake(60.28, 116) controlPoint2: CGPointMake(61.04, 115.95)];

        [bezier2Path moveToPoint: CGPointMake(60.8, 115.36)];
        [bezier2Path addCurveToPoint: CGPointMake(76.5, 124) controlPoint1: CGPointMake(63.68, 120.52) controlPoint2: CGPointMake(69.66, 124)];

        [bezier2Path moveToPoint: CGPointMake(76.5, 124)];
        [bezier2Path addCurveToPoint: CGPointMake(84.78, 122.16) controlPoint1: CGPointMake(79.49, 124) controlPoint2: CGPointMake(82.31, 123.33)];

        [bezier2Path moveToPoint: CGPointMake(83.45, 121.7)];
        [bezier2Path addCurveToPoint: CGPointMake(99.5, 131) controlPoint1: CGPointMake(86.17, 127.22) controlPoint2: CGPointMake(92.37, 131)];

        [bezier2Path moveToPoint: CGPointMake(99.5, 131)];
        [bezier2Path addCurveToPoint: CGPointMake(101.79, 130.87) controlPoint1: CGPointMake(100.28, 131) controlPoint2: CGPointMake(101.04, 130.96)];

        [bezier2Path moveToPoint: CGPointMake(100.8, 130.36)];
        [bezier2Path addCurveToPoint: CGPointMake(116.5, 139) controlPoint1: CGPointMake(103.68, 135.52) controlPoint2: CGPointMake(109.66, 139)];

        [bezier2Path moveToPoint: CGPointMake(116.5, 139)];
        [bezier2Path addCurveToPoint: CGPointMake(125.47, 136.81) controlPoint1: CGPointMake(119.77, 139) controlPoint2: CGPointMake(122.84, 138.21)];

        [bezier2Path moveToPoint: CGPointMake(124.53, 136.81)];
        [bezier2Path addCurveToPoint: CGPointMake(129.45, 138.58) controlPoint1: CGPointMake(126.04, 137.61) controlPoint2: CGPointMake(127.7, 138.22)];

        [bezier2Path moveToPoint: CGPointMake(128.92, 138.28)];
        [bezier2Path addCurveToPoint: CGPointMake(142.5, 144) controlPoint1: CGPointMake(132.14, 141.79) controlPoint2: CGPointMake(137.04, 144)];

        [bezier2Path moveToPoint: CGPointMake(142.5, 144)];
        [bezier2Path addCurveToPoint: CGPointMake(150.78, 142.16) controlPoint1: CGPointMake(145.49, 144) controlPoint2: CGPointMake(148.31, 143.34)];

        [bezier2Path moveToPoint: CGPointMake(149.45, 141.7)];
        [bezier2Path addCurveToPoint: CGPointMake(165.5, 151) controlPoint1: CGPointMake(152.17, 147.22) controlPoint2: CGPointMake(158.37, 151)];

        [bezier2Path moveToPoint: CGPointMake(165.5, 151)];
        [bezier2Path addCurveToPoint: CGPointMake(167.79, 150.87) controlPoint1: CGPointMake(166.28, 151) controlPoint2: CGPointMake(167.04, 150.96)];

        [bezier2Path moveToPoint: CGPointMake(166.8, 150.36)];
        [bezier2Path addCurveToPoint: CGPointMake(182.5, 159) controlPoint1: CGPointMake(169.68, 155.52) controlPoint2: CGPointMake(175.66, 159)];

        [bezier2Path moveToPoint: CGPointMake(182.5, 159)];
        [bezier2Path addCurveToPoint: CGPointMake(191.47, 156.81) controlPoint1: CGPointMake(185.77, 159) controlPoint2: CGPointMake(188.84, 158.21)];

        [bezier2Path moveToPoint: CGPointMake(190.53, 156.81)];
        [bezier2Path addCurveToPoint: CGPointMake(199.5, 159) controlPoint1: CGPointMake(193.16, 158.21) controlPoint2: CGPointMake(196.23, 159)];

        [bezier2Path moveToPoint: CGPointMake(199.5, 159)];
        [bezier2Path addCurveToPoint: CGPointMake(217, 143.5) controlPoint1: CGPointMake(209.04, 159) controlPoint2: CGPointMake(217, 152.18)];

        [bezier2Path moveToPoint: CGPointMake(217, 143.5)];
        [bezier2Path addCurveToPoint: CGPointMake(216.99, 142.95) controlPoint1: CGPointMake(217, 143.32) controlPoint2: CGPointMake(217, 143.13)];

        [bezier2Path moveToPoint: CGPointMake(215.96, 143.99)];
        [bezier2Path addCurveToPoint: CGPointMake(216.5, 144) controlPoint1: CGPointMake(216.14, 144) controlPoint2: CGPointMake(216.32, 144)];

        [bezier2Path moveToPoint: CGPointMake(216.5, 144)];
        [bezier2Path addCurveToPoint: CGPointMake(225.47, 141.81) controlPoint1: CGPointMake(219.77, 144) controlPoint2: CGPointMake(222.84, 143.21)];

        [bezier2Path moveToPoint: CGPointMake(224.53, 141.81)];
        [bezier2Path addCurveToPoint: CGPointMake(233.5, 144) controlPoint1: CGPointMake(227.16, 143.21) controlPoint2: CGPointMake(230.23, 144)];

        [bezier2Path moveToPoint: CGPointMake(233.5, 144)];
        [bezier2Path addCurveToPoint: CGPointMake(251, 128.5) controlPoint1: CGPointMake(243.04, 144) controlPoint2: CGPointMake(251, 137.18)];

        [bezier2Path moveToPoint: CGPointMake(251, 128.5)];
        [bezier2Path addCurveToPoint: CGPointMake(250.63, 125.33) controlPoint1: CGPointMake(251, 127.42) controlPoint2: CGPointMake(250.87, 126.36)];

        [bezier2Path moveToPoint: CGPointMake(250.17, 126.42)];
        [bezier2Path addCurveToPoint: CGPointMake(258, 113.5) controlPoint1: CGPointMake(254.85, 123.67) controlPoint2: CGPointMake(258, 118.94)];

        [bezier2Path moveToPoint: CGPointMake(258, 113.5)];
        [bezier2Path addCurveToPoint: CGPointMake(253.92, 103.55) controlPoint1: CGPointMake(258, 109.7) controlPoint2: CGPointMake(256.45, 106.23)];

        [bezier2Path moveToPoint: CGPointMake(253.73, 105.08)];
        [bezier2Path addCurveToPoint: CGPointMake(261, 92.5) controlPoint1: CGPointMake(258.1, 102.29) controlPoint2: CGPointMake(261, 97.72)];

        [bezier2Path moveToPoint: CGPointMake(261, 92.5)];
        [bezier2Path addCurveToPoint: CGPointMake(243.5, 77) controlPoint1: CGPointMake(261, 83.82) controlPoint2: CGPointMake(253.04, 77)];

        [bezier2Path moveToPoint: CGPointMake(243.5, 77)];
        [bezier2Path addCurveToPoint: CGPointMake(238.72, 77.58) controlPoint1: CGPointMake(241.84, 77) controlPoint2: CGPointMake(240.24, 77.2)];

        [bezier2Path moveToPoint: CGPointMake(239.96, 78.48)];
        [bezier2Path addCurveToPoint: CGPointMake(222.5, 64) controlPoint1: CGPointMake(239.36, 70.29) controlPoint2: CGPointMake(231.67, 64)];

        [bezier2Path moveToPoint: CGPointMake(222.5, 64)];
        [bezier2Path addCurveToPoint: CGPointMake(214.16, 65.87) controlPoint1: CGPointMake(219.49, 64) controlPoint2: CGPointMake(216.65, 64.67)];

        [bezier2Path moveToPoint: CGPointMake(215.22, 65.99)];
        [bezier2Path addCurveToPoint: CGPointMake(213.73, 64.92) controlPoint1: CGPointMake(214.75, 65.61) controlPoint2: CGPointMake(214.25, 65.25)];
        [bezier2Path closePath];

        UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
        [bezier3Path moveToPoint: CGPointMake(82, 250.5)];
        [bezier3Path addCurveToPoint: CGPointMake(143.5, 187.5) controlPoint1: CGPointMake(101.83, 244.67) controlPoint2: CGPointMake(141.9, 223.9)];
        [bezier3Path addCurveToPoint: CGPointMake(133.5, 140.5) controlPoint1: CGPointMake(145.1, 151.1) controlPoint2: CGPointMake(137.5, 141)];
        [bezier3Path moveToPoint: CGPointMake(225.5, 256)];
        [bezier3Path addCurveToPoint: CGPointMake(172, 227) controlPoint1: CGPointMake(207.17, 255) controlPoint2: CGPointMake(170.8, 247.8)];
        [bezier3Path addCurveToPoint: CGPointMake(183, 168.5) controlPoint1: CGPointMake(173.2, 206.2) controlPoint2: CGPointMake(179.83, 179.33)];
        [bezier3Path addCurveToPoint: CGPointMake(192.5, 156.5) controlPoint1: CGPointMake(185.17, 164.17) controlPoint2: CGPointMake(190.1, 155.7)];
        [bezier3Path moveToPoint: CGPointMake(158.5, 165)];
        [bezier3Path addCurveToPoint: CGPointMake(151, 214) controlPoint1: CGPointMake(157, 180.17) controlPoint2: CGPointMake(153.4, 211.2)];
        [bezier3Path moveToPoint: CGPointMake(163.5, 239.5)];
        [bezier3Path addCurveToPoint: CGPointMake(168.5, 168.5) controlPoint1: CGPointMake(163.5, 231.5) controlPoint2: CGPointMake(162.5, 183)];
        [bezier3Path moveToPoint: CGPointMake(145, 207.5)];
        [bezier3Path addCurveToPoint: CGPointMake(124.5, 236.5) controlPoint1: CGPointMake(132, 226.5) controlPoint2: CGPointMake(130.5, 231)];

        UIBezierPath* bezier4Path = [UIBezierPath bezierPath];
        [bezier4Path moveToPoint: CGPointMake(99.5, 243.5)];
        [bezier4Path addCurveToPoint: CGPointMake(66, 248.81) controlPoint1: CGPointMake(91.5, 235) controlPoint2: CGPointMake(76.4, 235.61)];
        [bezier4Path moveToPoint: CGPointMake(39.5, 255)];
        [bezier4Path addCurveToPoint: CGPointMake(63.5, 248) controlPoint1: CGPointMake(42.83, 251.17) controlPoint2: CGPointMake(52.3, 244.4)];
        [bezier4Path addCurveToPoint: CGPointMake(74, 252) controlPoint1: CGPointMake(74.7, 251.6) controlPoint2: CGPointMake(75.17, 252.17)];
        [bezier4Path moveToPoint: CGPointMake(178, 240.5)];
        [bezier4Path addCurveToPoint: CGPointMake(201.5, 240.5) controlPoint1: CGPointMake(183, 237.73) controlPoint2: CGPointMake(194.7, 233.85)];
        [bezier4Path addCurveToPoint: CGPointMake(206.74, 246.5) controlPoint1: CGPointMake(203.78, 242.73) controlPoint2: CGPointMake(205.48, 244.74)];
        [bezier4Path moveToPoint: CGPointMake(210, 253.5)];
        [bezier4Path addCurveToPoint: CGPointMake(206.74, 246.5) controlPoint1: CGPointMake(210, 252.46) controlPoint2: CGPointMake(209.25, 249.99)];
        [bezier4Path moveToPoint: CGPointMake(206.74, 246.5)];
        [bezier4Path addCurveToPoint: CGPointMake(241.5, 248) controlPoint1: CGPointMake(218.33, 243.33) controlPoint2: CGPointMake(241.5, 239.2)];
        [bezier4Path addCurveToPoint: CGPointMake(224.5, 256) controlPoint1: CGPointMake(241.5, 256.8) controlPoint2: CGPointMake(225.83, 255.17)];
        
        [bezier3Path closePath];
        
        self.paths = [[NSArray alloc] initWithObjects: bezier2Path, bezier3Path, bezier4Path, nil];
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
