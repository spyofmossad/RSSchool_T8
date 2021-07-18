//
//  PaletteViewController.h
//  RSSchool_T8
//
//  Created by Dzmitry Navitski on 7/16/21.
//

#import "ModalViewController.h"
#import "PaletteButton.h"
#import "AppButton.h"

NS_ASSUME_NONNULL_BEGIN

typedef void (^DrawColorsHandler)(NSMutableArray *drawColors);

@interface PaletteViewController : ModalViewController

- (instancetype)initWithColorSet:(NSMutableArray *)colorSet;

@property (copy, nonatomic) DrawColorsHandler drawColorsHandler;
- (void) getDrawColors:(DrawColorsHandler) completion;

@end

NS_ASSUME_NONNULL_END
