//
//  ViewController.m
//  RSSchool_T8
//
//  Created by Dzmitry Navitski on 7/15/21.
//

#import "CanvasViewController.h"
#import "PaletteViewController.h"
#import "AppButton.h"
#import "UIColor+CustomColor.h"
#import "UIFont+Montserrat.h"
#import "RSSchool_T8-Swift.h"
#import "Model.h"


@interface CanvasViewController ()

@property (strong, nonatomic) UIView *canvas;
@property (strong, nonatomic) AppButton *openPalette;
@property (strong, nonatomic) AppButton *openTimer;
@property (strong, nonatomic) AppButton *draw;
@property (strong, nonatomic) AppButton *share;
@property (strong, nonatomic) AppButton *reset;

@property (nonatomic) Drawing currentDrawing;
@property (nonatomic) NSMutableArray *drawColors;
@property (nonatomic) float drawTime;
@property Model *drawModel;
@property NSTimer *drawTimer;

@property NSMutableArray<CAShapeLayer *> *layers;

@end

@implementation CanvasViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self prepareView];
    [self prepareNavigationBar];
    [self addTargets];
    
    self.view.backgroundColor = UIColor.whiteColor;
    self.currentDrawing = head;
    self.drawColors = [NSMutableArray new];
    self.drawTime = 1.0f;
}

- (void)prepareView {
    self.canvas = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    self.canvas.backgroundColor = UIColor.whiteColor;
    self.canvas.layer.shadowColor = [UIColor chillSky].CGColor;
    self.canvas.layer.shadowOpacity = 0.2;
    self.canvas.layer.shadowRadius = 5;
    self.canvas.layer.shadowOffset = CGSizeMake(0, 0);
    self.canvas.layer.shadowPath = [UIBezierPath bezierPathWithRect:self.canvas.bounds].CGPath;
    self.canvas.layer.shouldRasterize = true;
    self.canvas.layer.cornerRadius = 8;
    [self.view addSubview:self.canvas];
    
    self.canvas.translatesAutoresizingMaskIntoConstraints = false;
    [NSLayoutConstraint activateConstraints:@[
        [self.canvas.heightAnchor constraintEqualToConstant:300],
        [self.canvas.widthAnchor constraintEqualToConstant:300],
        [self.canvas.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:100],
        [self.canvas.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor]
    ]];
    
    self.openPalette = [[AppButton alloc] initWithTitle:@"Open Palette"];
    [self.view addSubview:self.openPalette];
    self.openPalette.translatesAutoresizingMaskIntoConstraints = false;
    [NSLayoutConstraint activateConstraints:@[
        [self.openPalette.topAnchor constraintEqualToAnchor:self.canvas.bottomAnchor constant:50],
        [self.openPalette.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:20]
    ]];

    self.openTimer = [[AppButton alloc] initWithTitle:@"Open Timer"];
    [self.view addSubview:self.openTimer];
    self.openTimer.translatesAutoresizingMaskIntoConstraints = false;
    [NSLayoutConstraint activateConstraints:@[
        [self.openTimer.topAnchor constraintEqualToAnchor:self.openPalette.bottomAnchor constant:20],
        [self.openTimer.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:20]
    ]];

    self.draw = [[AppButton alloc] initWithTitle:@"Draw"];
    [self.view addSubview:self.draw];
    self.draw.translatesAutoresizingMaskIntoConstraints = false;
    [NSLayoutConstraint activateConstraints:@[
        [self.draw.topAnchor constraintEqualToAnchor:self.canvas.bottomAnchor constant:50],
        [self.draw.rightAnchor constraintEqualToAnchor:self.view.rightAnchor constant:-40]
    ]];

    self.reset = [[AppButton alloc] initWithTitle:@"Reset"];
    [self.view addSubview:self.reset];
    self.reset.translatesAutoresizingMaskIntoConstraints = false;
    self.reset.hidden = true;
    [NSLayoutConstraint activateConstraints:@[
        [self.reset.topAnchor constraintEqualToAnchor:self.canvas.bottomAnchor constant:50],
        [self.reset.rightAnchor constraintEqualToAnchor:self.view.rightAnchor constant:-40]
    ]];

    self.share = [[AppButton alloc] initWithTitle:@"Share"];
    [self.view addSubview:self.share];
    self.share.translatesAutoresizingMaskIntoConstraints = false;
    [NSLayoutConstraint activateConstraints:@[
        [self.share.topAnchor constraintEqualToAnchor:self.draw.bottomAnchor constant:20],
        [self.share.rightAnchor constraintEqualToAnchor:self.view.rightAnchor constant:-40]
    ]];
    
    self.share.enabled = false;
}

- (void)prepareNavigationBar {
    self.navigationItem.title = @"Artist";
    UIBarButtonItem *openDrawings = [[UIBarButtonItem alloc]
                                     initWithTitle:@"Drawings"
                                     style:UIBarButtonItemStylePlain
                                     target:self
                                     action:@selector(openDrawingsOnTap)];
    self.navigationItem.rightBarButtonItem = openDrawings;
}

- (void)addTargets {
    [self.openPalette addTarget:self action:@selector(openPaletteOnTap) forControlEvents:UIControlEventTouchUpInside];
    [self.openTimer addTarget:self action:@selector(openTimerOnTap) forControlEvents:UIControlEventTouchUpInside];
    [self.draw addTarget:self action:@selector(drawOnTap) forControlEvents:UIControlEventTouchUpInside];
    [self.share addTarget:self action:@selector(shareOnTap) forControlEvents:UIControlEventTouchUpInside];
    [self.reset addTarget:self action:@selector(resetOnTap) forControlEvents:UIControlEventTouchUpInside];
}

- (void)openPaletteOnTap {
    PaletteViewController *palette = [[PaletteViewController alloc] initWithColorSet:self.drawColors];
    [palette getDrawColors:^(NSMutableArray *drawColors) {
        self.drawColors = drawColors;
    }];
    [self addChildViewController: palette];
    palette.view.frame = CGRectMake(0, self.view.bounds.size.height, self.view.bounds.size.width, self.view.bounds.size.height / 2);
    [self.view addSubview: palette.view];
    
    [UIView animateWithDuration:0.6 delay:0.0 usingSpringWithDamping:0.7 initialSpringVelocity:0.5 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        palette.view.frame = CGRectMake(0, self.view.bounds.size.height / 2, self.view.bounds.size.width, self.view.bounds.size.height / 2);
    } completion:^(BOOL finished) {
        [palette didMoveToParentViewController:self];
    }];
}

- (void)openTimerOnTap {
    SwiftTimerViewController *timerViewController = [[SwiftTimerViewController alloc] initWithDrawTime:self.drawTime];
    timerViewController.timerCallback = ^(float newDrawTime) {
        self.drawTime = newDrawTime;
    };
    [self addChildViewController: timerViewController];
    timerViewController.view.frame = CGRectMake(0, self.view.bounds.size.height, self.view.bounds.size.width, self.view.bounds.size.height / 2);
    [self.view addSubview: timerViewController.view];
    
    [UIView animateWithDuration:0.6 delay:0.0 usingSpringWithDamping:0.7 initialSpringVelocity:0.5 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        timerViewController.view.frame = CGRectMake(0, self.view.bounds.size.height / 2, self.view.bounds.size.width, self.view.bounds.size.height / 2);
    } completion:^(BOOL finished) {
        [timerViewController didMoveToParentViewController:self];
    }];
}

- (void)drawOnTap {
    self.openPalette.enabled = false;
    self.draw.enabled = false;
    self.openTimer.enabled = false;
    self.share.enabled = false;
    
    self.layers = [NSMutableArray new];
    if (self.canvas.layer.sublayers != nil) {
        self.canvas.layer.sublayers = nil;
    }
    
    self.drawModel = [[Model alloc] initDraw:self.currentDrawing];
    if (self.drawColors.count > 0) {
        self.drawModel.colors = [[NSMutableArray alloc] initWithArray:self.drawColors];
        while (self.drawModel.colors.count != 3) {
            [self.drawModel.colors addObject:UIColor.blackColor];
        }
    }
    
    for (int i = 0; i < self.drawModel.paths.count; i++) {
        UIBezierPath *path = ((UIBezierPath *) self.drawModel.paths[i]);
        UIColor *pathColor = ((UIColor *) self.drawModel.colors[i]);
        CAShapeLayer *layer = [CAShapeLayer layer];
        layer.fillColor = UIColor.clearColor.CGColor;
        layer.strokeColor = pathColor.CGColor;
        layer.strokeEnd = 0;
        layer.lineCap = kCALineCapRound;
        [layer setPath: path.CGPath];
        
        [self.canvas.layer addSublayer:layer];
        [self.layers addObject:layer];
    }
    
    self.drawTimer = [NSTimer scheduledTimerWithTimeInterval: 1.0 / 60.0
                                                      target: self
                                                    selector: @selector(onTick)
                                                    userInfo: nil repeats:YES];
}

- (void)resetOnTap {
    self.drawTimer = [NSTimer scheduledTimerWithTimeInterval: 1.0 / 30.0
                                                      target: self
                                                    selector: @selector(onTickReverse)
                                                    userInfo: nil repeats:YES];
    
    self.openPalette.enabled = true;
    self.openTimer.enabled = true;
    self.share.enabled = false;
    self.reset.hidden = true;
    self.draw.hidden = false;
    self.draw.enabled = false;
}

- (void)onTick {
    for (int i = 0; i < self.layers.count; i++) {
        if (((CAShapeLayer *)self.layers[i]).strokeEnd > 1.0) {
            [self.drawTimer invalidate];
            self.drawTimer = nil;
            
            self.openPalette.enabled = false;
            self.openTimer.enabled = false;
            self.share.enabled = true;
            self.draw.hidden = true;
            self.reset.hidden = false;
            
            return;
        }
        ((CAShapeLayer *) self.layers[i]).strokeEnd += 1.0 / (60.0 * self.drawTime);
    };
}

- (void)onTickReverse {
    for (int i = 0; i < self.layers.count; i++) {
        if (((CAShapeLayer *)self.layers[i]).strokeEnd < 0.0) {
            [self.drawTimer invalidate];
            self.drawTimer = nil;
            self.draw.enabled = true;
            
            return;
        }
        ((CAShapeLayer *) self.layers[i]).strokeEnd -= 1.0 / 10.0;
    };
}

- (UIImage *)renderImage {
    UIGraphicsImageRenderer *renderer = [[UIGraphicsImageRenderer alloc] initWithSize:CGSizeMake(300, 300)];
    
    NSData *imageData = [renderer PNGDataWithActions:^(UIGraphicsImageRendererContext * context) {
        
        for (int i = 0; i < self.drawModel.paths.count; i++) {
            UIBezierPath *path = ((UIBezierPath *) self.drawModel.paths[i]);
            UIColor *pathColor = ((UIColor *) self.drawModel.colors[i]);
            [pathColor setStroke];
            [[UIColor clearColor] setFill];
            
            [path stroke];
        }
    }];
    
    return [[UIImage alloc] initWithData:imageData];
}

- (void)shareOnTap {
    UIImage *image = [self renderImage];
    UIActivityViewController *activity = [[UIActivityViewController alloc]initWithActivityItems:@[image] applicationActivities:nil];
    [self presentViewController:activity animated:true completion:nil];
}

- (void)openDrawingsOnTap {
    SwiftDrawingsViewController *drawings = [[SwiftDrawingsViewController alloc] initWithCurrentDrawing: self.currentDrawing];
    drawings.drawingCallback = ^(Drawing newDraw) {
        self.currentDrawing = newDraw;
    };
    [self.navigationController pushViewController:drawings animated:true];
}

@end
