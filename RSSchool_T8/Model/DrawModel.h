//
//  DrawModel.h
//  RSSchool_T8
//
//  Created by Dzmitry Navitski on 7/19/21.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DrawModel : NSObject

typedef NS_ENUM(NSUInteger, DrawingType) {
    head,
    landscape,
    planet,
    tree
};

@property NSArray<UIBezierPath *> *paths;
@property NSMutableArray<CAShapeLayer *> *layers;

@end

NS_ASSUME_NONNULL_END
