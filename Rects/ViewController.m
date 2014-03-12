//
//  ViewController.m
//  Rects
//
//  Created by Mason Silber on 3/2/14.
//  Copyright (c) 2014 MasonSilber. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Frames.h"

@interface ViewController ()
@property (nonatomic) UIView *testView;
@property (nonatomic) BOOL moveLeft;
@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    _testView = [[UIView alloc] initWithFrame:CGRectMake(100.0f, 100.0f, 100.0f, 100.0f)];
    _testView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:_testView];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor redColor];
    button.titleLabel.textAlignment = NSTextAlignmentCenter;
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setTitle:@"Tap me!" forState:UIControlStateNormal];
    button.frame = CGRectMake(110.0f, 300.0f, 100.0f, 50.0f);
    [button addTarget:self action:@selector(testAFunction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)testAFunction
{
    if (self.moveLeft) {
        [self.testView rotateClockwise:45 aboutPoint:CGPointMake(CGRectGetMidX(self.view.frame), 300.0f) animated:YES];
    } else {
        [self.testView rotateCounterclockwise:45 aboutPoint:CGPointMake(CGRectGetMidX(self.view.frame), 300.0f) animated:YES];
    }
    self.moveLeft = !self.moveLeft;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
