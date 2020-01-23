//
//  ViewController.m
//  ObjCLabb1
//
//  Created by Yahya Mokaied on 18/01/2020.
//  Copyright © 2020 Yahya Mokaied. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UILabel *changeLabel;

@property (strong, nonatomic) IBOutlet UIButton *appNameButtonHome;
@property (strong, nonatomic) IBOutlet UIButton *appNameButtonAboutMe;
@property (strong, nonatomic) IBOutlet UIButton *appNameButtonGame;
@property (strong, nonatomic) IBOutlet UIButton *appNameButtonWhy;





@property (strong, nonatomic) IBOutlet UILabel *Resault;
@property (strong, nonatomic) IBOutlet UILabel *Resault2;


@property (weak, nonatomic) IBOutlet UITextField *InputNumber;
@property (strong, nonatomic) NSString *theNumber;


@end

@implementation ViewController


- (IBAction)GetNewNumber:(id)sender {

    int rndValue = arc4random_uniform(100)+1;
    self.theNumber = [NSString stringWithFormat: @"%d", rndValue];
    NSLog(@"%@", self.theNumber);
    [self.Resault setText:@"NEW NUMBER ISSUED, GUESS IT NOW"];
    [self.Resault setTextColor:[UIColor grayColor]];
}

- (IBAction)GuessTheNumber:(id)sender {

    if ([self.theNumber  isEqualToString:[self.InputNumber text]]) {
        [self.view  endEditing:YES];
        [self.Resault setText:@"... YOU WON ..."];
        [self.Resault2 setText:[self.InputNumber text]];
        [self.Resault setTextColor:[UIColor greenColor]];
        [self.Resault2 setTextColor:[UIColor greenColor]];
    }
    else
    {
        [self.view  endEditing:YES];
        [self.Resault setText:@"...Try Again ..."];
        NSLog(self.theNumber);
        [self.Resault setTextColor:[UIColor redColor]];
        [self.Resault2 setTextColor:[UIColor whiteColor]];

    }
}





- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)changeButton:(id)sender {
    [self.changeLabel setText:@"It's Black Now"];
    [self.appNameButtonHome setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self.appNameButtonAboutMe setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self.appNameButtonWhy setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self.appNameButtonGame setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view  endEditing:YES];
}

@end
