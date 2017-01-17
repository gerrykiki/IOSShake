//
//  ViewController.m
//  ShakeTest
//
//  Created by Po wei Lin on 17/01/2017.
//  Copyright © 2017 gerry. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end


@implementation ViewController
@synthesize ShakeNumber;
int number;

- (void)viewDidLoad {
    [super viewDidLoad];
    number = 0;
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)canBecomeFirstResponder
{
    return YES;
}

-(void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    NSString *Shakenumbertest;
    if(motion == UIEventSubtypeMotionShake)
    {
        number++;
        Shakenumbertest = [[NSString alloc]initWithFormat:@"%d",number];
        ShakeNumber.text = Shakenumbertest;
        NSLog(@"Shake Test");
    }
}

@end
