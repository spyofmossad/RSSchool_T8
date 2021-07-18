//
//  PaletteViewController.m
//  RSSchool_T8
//
//  Created by Dzmitry Navitski on 7/16/21.
//

#import "PaletteViewController.h"
#import "UIColor+CustomColor.h"

@interface PaletteViewController ()

@property NSMutableArray *paletteButtons;
@property NSArray<UIColor *> *colors;
@property NSMutableArray *selectedColors;
@property NSTimer *timer;

@end

@implementation PaletteViewController

- (instancetype)initWithColorSet:(NSMutableArray *)colorSet {
    self = [super initWithNibName:nil bundle:nil];
    self.selectedColors = [[NSMutableArray alloc] initWithArray:colorSet];
    self.colors = [[NSArray alloc] initWithObjects:
                   UIColor.paletteRed, UIColor.paletteBlue, UIColor.paletteGreen, UIColor.paletteGray,
                   UIColor.palettePurple, UIColor.palettePeachy, UIColor.paletteOrange, UIColor.paletteLightBlue,
                   UIColor.palettePink, UIColor.paletteBlack, UIColor.paletteDarkGreen, UIColor.paletteBrown, nil];
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupPaletteSubViews];
    [self setupTargets];
}

- (void)setupPaletteSubViews {
    self.paletteButtons = [NSMutableArray new];
    for (UIColor *color in self.colors) {
        PaletteButton *paletteButton = [[PaletteButton alloc] init];
        paletteButton.backgroundColor = color;
        [self.paletteButtons addObject:paletteButton];
        
        paletteButton.selected = [self.selectedColors containsObject:paletteButton.backgroundColor] ? true : false;
    }
    
    UIStackView *rowOne = [[UIStackView alloc] initWithArrangedSubviews:[self.paletteButtons subarrayWithRange:NSMakeRange(0, 6)]];
    rowOne.axis = UILayoutConstraintAxisHorizontal;
    rowOne.distribution = UIStackViewDistributionFillEqually;
    rowOne.spacing = 20;
    UIStackView *rowTwo = [[UIStackView alloc] initWithArrangedSubviews:[self.paletteButtons subarrayWithRange:NSMakeRange(6, 6)]];
    rowOne.axis = UILayoutConstraintAxisHorizontal;
    rowTwo.distribution = UIStackViewDistributionFillEqually;
    rowTwo.spacing = 20;
    UIStackView *combinedStack = [[UIStackView alloc] initWithArrangedSubviews:@[rowOne, rowTwo]];
    combinedStack.axis = UILayoutConstraintAxisVertical;
    combinedStack.distribution = UIStackViewDistributionFillEqually;
    combinedStack.spacing = 20;
    [self.view addSubview:combinedStack];
    
    combinedStack.translatesAutoresizingMaskIntoConstraints = false;
    [NSLayoutConstraint activateConstraints:@[
        [combinedStack.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:17],
        [combinedStack.rightAnchor constraintEqualToAnchor:self.view.rightAnchor constant:-17],
        [combinedStack.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:92],
        [combinedStack.heightAnchor constraintEqualToConstant:100]
    ]];
}

- (void)setupTargets {
    for (int i =0; i < self.paletteButtons.count; i++) {
        [self.paletteButtons[i] addTarget:self action:@selector(paletteButtonOnTap:) forControlEvents:UIControlEventTouchUpInside];
    }
}

- (void)paletteButtonOnTap:(PaletteButton *)sender {
    if (sender.isSelected) {
        sender.selected = false;
        [self.selectedColors removeObject:sender.backgroundColor];
    } else {
        sender.selected = true;
        self.view.backgroundColor = sender.backgroundColor;
        [self.timer invalidate];
        self.timer = nil;
        self.timer = [NSTimer scheduledTimerWithTimeInterval: 1
                                         target: self
                                       selector: @selector(onTick)
                                       userInfo: nil repeats:NO];
        
        if (self.selectedColors.count == 3) {
            UIColor *removedColor = [self.selectedColors objectAtIndex:0];
            [self.selectedColors removeObjectAtIndex:0];
            for (int i = 0; i < self.paletteButtons.count; i++) {
                PaletteButton *button = [self.paletteButtons objectAtIndex:i];
                if ([button.backgroundColor isEqual:removedColor]) {
                    button.selected = false;
                }
            }
        }
        [self.selectedColors addObject:sender.backgroundColor];
    }
}

- (void)onTick {
    self.view.backgroundColor = UIColor.whiteColor;
}

- (void)saveOnTap {
    self.drawColorsHandler(self.selectedColors);
    [super saveOnTap];
}

- (void)getDrawColors:(DrawColorsHandler)completion {
    self.drawColorsHandler = completion;
}

@end
