UIView+Blur
=============

There's a ton of ways to get this done, namely nicklockwood's FXBlurView and radi's LiveFrost but those solutions requires you to use a subclass of UIView in order to make it work. For older iOS version support you should go with those solutions, but for iOS7 only, this is a lighter solution.

This category uses the UIToolbar layer hack as described so many times all over the web.

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



