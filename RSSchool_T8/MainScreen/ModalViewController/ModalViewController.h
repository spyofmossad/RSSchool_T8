//
//  PaletteViewController.h
//  RSSchool_T8
//
//  Created by Dzmitry Navitski on 7/16/21.
//

#import <UIKit/UIKit.h>
#import "AppButton.h"

NS_ASSUME_NONNULL_BEGIN

@interface ModalViewController : UIViewController

@property (strong, nonatomic) AppButton *saveButton;

- (void)saveOnTap;

@end

NS_ASSUME_NONNULL_END
