//
//  ModelFactory.h
//  RSSchool_T8
//
//  Created by Dzmitry Navitski on 7/19/21.
//

#import <Foundation/Foundation.h>
#import "DrawModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface ModelFactory : NSObject

- (DrawModel *)getDrawModelOf:(DrawingType) type;

@end

NS_ASSUME_NONNULL_END
