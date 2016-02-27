//
//  ViewController.m
//  NotificationCenter
//
//  Created by Ashish Chauhan on 26/02/16.
//  Copyright © 2016 Ashish Chauhan. All rights reserved.
//

#import "ViewController.h"
#import "ScondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)Brodcast:(id)sender
{
    
    
    ScondViewController *sc = [self.storyboard instantiateViewControllerWithIdentifier:@"second"];
    [self presentViewController:sc animated:YES completion:nil];


//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle: nil];
//    ScondViewController *lvc = [storyboard instantiateViewControllerWithIdentifier:@"second"];
//    [self.navigationController pushViewController:lvc animated:YES];
    
    
    [[NSNotificationCenter defaultCenter]
     postNotificationName:@"login"
     object:self];


    

}



@end
