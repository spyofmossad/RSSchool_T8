//
//  DrawModel.m
//  RSSchool_T8
//
//  Created by Dzmitry Navitski on 7/19/21.
//

#import "DrawModel.h"

@implementation DrawModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.colors = [[NSMutableArray alloc] initWithObjects: UIColor.blackColor, UIColor.blackColor, UIColor.blackColor, nil];
    }
    return self;
}

@end
