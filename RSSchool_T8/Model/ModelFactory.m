//
//  ModelFactory.m
//  RSSchool_T8
//
//  Created by Dzmitry Navitski on 7/19/21.
//

#import "ModelFactory.h"
#import "Head.h"
#import "Landscape.h"
#import "Planet.h"
#import "Tree.h"


@interface ModelFactory()

@property (nonatomic, strong) DrawModel *head;
@property (nonatomic, strong) DrawModel *landscape;
@property (nonatomic, strong) DrawModel *planet;
@property (nonatomic, strong) DrawModel *tree;

@end

@implementation ModelFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.colors = [[NSMutableArray alloc] initWithObjects:UIColor.blackColor, UIColor.blackColor, UIColor.blackColor, nil];
    }
    return self;
}

- (DrawModel *)getDrawModelOf:(DrawingType) type {
    switch (type) {
        case head:
            if (_head == nil) {
                _head = [Head new];
            }
            return _head;
        case landscape:
            if (_landscape == nil) {
                _landscape = [Landscape new];
            }
            return _landscape;
        case planet:
            if (_planet == nil) {
                _planet = [Planet new];
            }
            return _planet;
        case tree:
            if (_tree == nil) {
                _tree = [Tree new];
            }
            return _tree;
    }
}

@end
