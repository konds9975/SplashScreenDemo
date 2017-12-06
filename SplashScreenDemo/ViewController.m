//
//  ViewController.m
//  SplashScreenDemo
//
//  Created by Kondya on 06/12/17.
//  Copyright © 2017 Kondya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    float i;
    NSTimer *timer;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
    NSArray *tintColors = @[[UIColor whiteColor]];
    
    _progressBarRoundedFat.progressTintColors       = tintColors;
    _progressBarRoundedFat.stripesOrientation       = YLProgressBarStripesOrientationLeft;
    _progressBarRoundedFat.indicatorTextDisplayMode = YLProgressBarIndicatorTextDisplayModeProgress;
    _progressBarRoundedFat.indicatorTextLabel.font  = [UIFont fontWithName:@"Arial-BoldMT" size:20];
    _progressBarRoundedFat.progressStretch          = NO;
    _progressBarRoundedFat.type               = YLProgressBarTypeFlat;
    i=0.1;
    timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(timerCalled) userInfo:nil repeats:YES];
}


-(void)timerCalled
{
    i=i+0.01;
    [self setProgress:i animated:YES];
    NSLog(@"Timer Called %f",i);
    if((int)i==1)
    {
        [timer invalidate];
        [self performSegueWithIdentifier:@"abc" sender:nil];
    }
    
}
- (void)setProgress:(CGFloat)progress animated:(BOOL)animated
{
    
    [_progressBarRoundedFat setProgress:progress animated:animated];
}


@end
