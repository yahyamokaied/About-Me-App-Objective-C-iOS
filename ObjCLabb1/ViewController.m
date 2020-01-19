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







@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)changeButton:(id)sender {
    [self.changeLabel setText:@"It's Black Now"];
    
    [self.appNameButtonHome setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.appNameButtonAboutMe setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view  endEditing:YES];
}

@end
