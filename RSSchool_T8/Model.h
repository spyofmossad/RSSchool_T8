//
//  Head.h
//  RSSchool_T8
//
//  Created by Dzmitry Navitski on 7/17/21.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Model : NSObject

typedef NS_ENUM(NSUInteger, Drawing) {
    head,
    landscape,
    planet,
    tree
};

@property NSArray *paths;
@property NSMutableArray *colors;
- (instancetype)initDraw:(Drawing) draw;

@end

NS_ASSUME_NONNULL_END
