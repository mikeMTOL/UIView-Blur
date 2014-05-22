//
//  KSViewController.m
//  testBlurredUIView
//
//  Created by salah on 2014-05-21.
//  Copyright (c) 2014 kronositi inc. All rights reserved.
//

#import "KSViewController.h"
#import "UIView+Blur.h"

@interface KSViewController ()
@property (strong,nonatomic) UIView* squareView;
@end

@implementation KSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIImageView* imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"background"]];
    imageView.frame = self.view.frame;
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    [self.view addSubview:imageView];
    
    UIView* view = [[UIView alloc] initWithFrame:CGRectMake(100, 160, 100, 100)];
    UIImageView *iv = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    [iv setImage:[UIImage imageNamed:@"checkmark"]];
    iv.contentMode = UIViewContentModeCenter;
    [view addSubview:iv];
    
    [view enableBlur:YES];
    [view setBlurTintColor:[UIColor redColor]];
    view.layer.cornerRadius = 5;
    self.squareView = view;
    
    UIScrollView* scrollview = [[UIScrollView alloc] initWithFrame:self.view.frame];
    [scrollview addSubview:self.squareView];
    scrollview.alwaysBounceVertical=YES;
    view.clipsToBounds = YES;
    [self.view addSubview:scrollview];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(10, 30, 100, 20);
    button.tintColor = [UIColor whiteColor];
    [button setTitle:@"Toggle Style" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(toggleStyle:) forControlEvents:UIControlEventTouchDown];
    [scrollview addSubview:button];
    
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.tintColor = [UIColor whiteColor];
    button.frame = CGRectMake(10, 60, 100, 20);
    [button setTitle:@"Toggle Color" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(toggleColor:) forControlEvents:UIControlEventTouchDown];
    [scrollview addSubview:button];

    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.tintColor = [UIColor whiteColor];
    button.frame = CGRectMake(10, 90, 100, 20);
    [button setTitle:@"Toggle Blur" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(toggleBlur:) forControlEvents:UIControlEventTouchDown];
    [scrollview addSubview:button];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)toggleStyle:(UIButton*)sender
{
    sender.selected = !sender.isSelected;
    self.squareView.blurStyle = sender.isSelected;
}

-(void)toggleColor:(UIButton*)sender
{
    sender.selected = !sender.selected;
    if(!sender.isSelected) {
        self.squareView.blurTintColor = [UIColor redColor];
    } else {
        self.squareView.blurTintColor = [UIColor brownColor];
    }
}

-(void)toggleBlur:(UIButton*)sender
{
    sender.selected = !sender.selected;
    if(sender.isSelected) {
        [self.squareView enableBlur:NO];
    } else {
        [self.squareView enableBlur:YES];
    }
}

@end
