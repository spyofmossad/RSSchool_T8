//
//  PaletteButton.h
//  RSSchool_T8
//
//  Created by Dzmitry Navitski on 7/16/21.
//

#import "ShadowedButton.h"

NS_ASSUME_NONNULL_BEGIN

@interface PaletteButton : ShadowedButton

@property UIColor *backgroundColor;
-(instancetype)init;

@end

NS_ASSUME_NONNULL_END
