//
//  ViewController.m
//  AYAPrimesCounter
//
//  Created by Kapam6a on 21.01.17.
//  Copyright © 2017 Kapam6a. All rights reserved.
//

#import "ViewController.h"
#import "PrimesCounter.h"

@interface ViewController ()

@property (nonatomic, weak) UIActivityIndicatorView *indicator;

@end

@implementation ViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    UIActivityIndicatorView *indicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    indicator.center = self.view.center;
    [self.view addSubview:indicator];
    self.indicator = indicator;
}

- (IBAction)didPressCountButton:(UIButton *)sender{
    NSInteger inputNumber = self.inputTextField.text.intValue;
    
    PrimesCounter *primesCounter = [PrimesCounter new];
    [self.indicator startAnimating];
    
    self.view.userInteractionEnabled = NO;
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
        NSInteger primesSum = [primesCounter countPrimesSumForNumber:inputNumber];
        dispatch_async(dispatch_get_main_queue(),^{
            [self.indicator stopAnimating];
            self.view.userInteractionEnabled = YES;
            self.outputLabel.text = @(primesSum).stringValue;
        });
    });
}


@end
