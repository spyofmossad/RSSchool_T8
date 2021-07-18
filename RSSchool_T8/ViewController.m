//
//  ViewController.m
//  RSSchool_T8
//
//  Created by Dzmitry Navitski on 7/15/21.
//

#import "MainViewController.h"
#import "AppButton.h"

@interface MainViewController ()

@property (strong, nonatomic) AppButton *testButton;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    
    self.testButton = [[AppButton alloc] initWithFrame:CGRectMake(100, 100, 100, 40) andTitle:@"SomeTitle"];
    
    
    [self.view addSubview:self.testButton];
    
    [self.testButton addTarget:self action:@selector(test) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)test {
    NSLog(@"buttonPressed");
}


@end
