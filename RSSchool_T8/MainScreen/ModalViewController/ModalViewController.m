//
//  PaletteViewController.m
//  RSSchool_T8
//
//  Created by Dzmitry Navitski on 7/16/21.
//

#import "ModalViewController.h"
#import "AppButton.h"

@interface ModalViewController ()

@end

@implementation ModalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    
    [self addSaveButton];
    [self.saveButton addTarget:self action:@selector(saveOnTap) forControlEvents:UIControlEventTouchUpInside];
    
    UISwipeGestureRecognizer *swipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(saveOnTap)];
    swipe.direction = UISwipeGestureRecognizerDirectionDown;
    [self.view addGestureRecognizer:swipe];
}

- (void)viewWillLayoutSubviews {
    self.view.layer.cornerRadius = 40;
    self.view.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner;
    self.view.layer.shadowColor = UIColor.blackColor.CGColor;
    self.view.layer.shadowOpacity = 0.25;
    self.view.layer.shadowPath = [UIBezierPath bezierPathWithRoundedRect:self.view.bounds byRoundingCorners:UIRectCornerTopLeft | UIRectCornerTopRight cornerRadii:CGSizeMake(40.0, 40.0)].CGPath;
    self.view.layer.shadowOffset = CGSizeMake(0, 0);
    self.view.layer.shadowRadius = 2;
    self.view.layer.shouldRasterize = true;
}

- (void)addSaveButton {
    self.saveButton = [[AppButton alloc] initWithTitle:@"Save" andSize:CGSizeMake(85, 32)];
    [self.view addSubview:self.saveButton];
    
    self.saveButton.translatesAutoresizingMaskIntoConstraints = false;
    [NSLayoutConstraint activateConstraints:@[
        [self.saveButton.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:20],
        [self.saveButton.rightAnchor constraintEqualToAnchor:self.view.rightAnchor constant:-40],
        [self.saveButton.widthAnchor constraintEqualToConstant:85],
        [self.saveButton.heightAnchor constraintEqualToConstant:32]
    ]];
}

- (void)saveOnTap {
    [UIView animateWithDuration:0.3 animations:^{
        self.view.frame = CGRectMake(0, self.view.bounds.size.height * 2, self.view.bounds.size.width, self.view.bounds.size.height / 2);
    } completion:^(BOOL finished) {
        [self willMoveToParentViewController:nil];
        [self.view removeFromSuperview];
        [self removeFromParentViewController];
    }];
}

@end
