//
//  ViewController.m
//  First Touch
//
//  Created by Aristides Melendez H on 1/7/16.
//  Copyright © 2016 Aristides Melendez H. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CGRect limitesDeVentana = [[UIScreen mainScreen] bounds];
    UIView *view = [[UIView alloc] initWithFrame:limitesDeVentana];
    view.backgroundColor = [UIColor grayColor];
    self.view = view;
    
    self.fiftyPercentButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.fiftyPercentButton.frame = CGRectMake(25, 50, 100, 44);
    [self.fiftyPercentButton setTitle:@"Make 50%" forState:UIControlStateNormal];
    [self.fiftyPercentButton addTarget:self action:@selector(buttonPressed:) forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview:self.fiftyPercentButton];
    
    UIButton *segundoBoton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    segundoBoton.frame = CGRectMake(25, 90, 100, 44);
    [segundoBoton setTitle:@"Make 100%" forState:UIControlStateNormal];
    [segundoBoton addTarget:self action:@selector(buttonPressed:) forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview:segundoBoton];

    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 414, 50)];
    label.backgroundColor = [UIColor greenColor];
    label.textColor = [UIColor blackColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"Mi primera aplicación.";
    
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) buttonPressed:(UIButton *)sender;
{
    NSLog(@"boton presionado");
    if ([sender.titleLabel.text isEqualToString:@"Make 50%"]) {
        self.view.alpha = 0.5;
    } else {
        self.view.alpha = 1.0;
    }
    NSLog(@"transparencia seteada");
}

@end
