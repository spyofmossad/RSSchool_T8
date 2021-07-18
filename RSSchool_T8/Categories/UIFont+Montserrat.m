//
//  UIFont+Montserrat.m
//  RSSchool_T8
//
//  Created by Dzmitry Navitski on 7/16/21.
//

#import "UIFont+Montserrat.h"

@implementation UIFont (Montserrat)

+ (UIFont *) montMediumWithSize:(CGFloat)fontSize {
    return [UIFont fontWithName:@"Montserrat-Medium" size:fontSize];
}

+ (UIFont *) montRegularWithSize:(CGFloat)fontSize {
    return [UIFont fontWithName:@"Montserrat-Regular" size:fontSize];
}

@end
