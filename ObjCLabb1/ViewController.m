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
@property (strong, nonatomic) IBOutlet UILabel *Resault;
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
        [self.Resault setText:[self.InputNumber text]];
        [self.Resault setTextColor:[UIColor greenColor]];
    }
    else
    {
        [self.view  endEditing:YES];
        [self.Resault setText:@"Nooo"];
        NSLog(self.theNumber);
        [self.Resault setTextColor:[UIColor redColor]];
    }


}





- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)changeButton:(id)sender {
    [self.changeLabel setText:@"It's Black Now"];
    
    [self.appNameButtonHome setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view  endEditing:YES];
}

@end
