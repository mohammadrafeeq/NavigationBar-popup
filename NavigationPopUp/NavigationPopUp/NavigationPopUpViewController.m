//
//  NavigationPopUpViewController.m
//  NavigationPopUp
//
//  Created by Rafeeq on 8/18/14.
//  Copyright (c) 2014 Eeshana. All rights reserved.
//

#import "NavigationPopUpViewController.h"

@interface NavigationPopUpViewController ()

@end

@implementation NavigationPopUpViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor darkGrayColor];
    
    self.popup.frame=CGRectMake(00, 35, 320, self.popup.frame.size.height);
    [self.popup setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"imag.png"]]];
    
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc] initWithTitle:@"Show" style:UIBarButtonItemStylePlain target:self action:@selector(addClick:)];
        
}

-(void)addClick:(UIBarButtonItem*)sender
{
    if(self.popup.hidden)
    {
        self.popup.hidden=false;
    }
    else
    {
        self.popup.hidden=true;
    }
    
   
    [self.navigationController.navigationBar addSubview:self.popup];
        

    
}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
   CGPoint location = [touch locationInView:[touch view]];
    if (CGRectContainsPoint(self.popup.frame, location))
    {
        
    }
    else
    {
        [self.popup setHidden:YES];
    }
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
