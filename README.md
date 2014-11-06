UIView+Blur
=============
iOS8 support!!

Apple finally gave us a neat way to implement dynamic blurs with UIVisualEffectView.

This category supports both iOS8 and iOS7 (iOS7 with UIToolbar trick)

for iOS8 only, there's now a blurVibrancyBackground property onto which you must add UIViews that you want to take advantage of UIVibrancyEffect effect. Please look at the demo project on ways how to use it.

<img alt="ScreenShot" src="https://github.com/mmusallam/UIView-Blur/blob/master/testBlurredUIView/blurCategorySnapshot.gif?raw=true" width="320px"/>

How To Get Started
------------------
add UIView+Blur.h/.m to your project, then import .h file

```` objective-c
#import "UIView+Blur.h"
````

Create your UIView and activate the blur

```` objective-c
UIView* view = [[UIView alloc] initWithFrame:CGRectMake(100, 160, 100, 100)];    
[view enableBlur:YES];
[view setBlurTintColor:[UIColor redColor]];
[view setBlurTintColor:[UIColor redColor]];
````

Here's what can be customized, (check the .h file for more explanations):
````
/* The UIToolbar that has been put on the current view, use it to do your bidding */
@property (strong,nonatomic,readonly) UIView* blurBackground;

/* tint color of the blurred view */
@property (strong,nonatomic) UIColor* blurTintColor;

/* intensity of blurTintColor applied on the blur 0.0-1.0, default 0.6f */
@property (assign,nonatomic) CGFloat blurTintColorIntensity;

/* returns if blurring is enabled */
@property (readonly,nonatomic) BOOL isBlurred;

/* Style of Toolbar, remapped to UIViewBlurStyle typedef above */
@property (assign,nonatomic) UIViewBlurStyle blurStyle;
````

Requirements
---------------
No requirements,
I've tested this project with iOS 7.1


More
----

<p>Any suggestions are welcome ! as I am looking to learn good practices, to understand better behaviors and Objective-C in general !
Thank you.</p>



