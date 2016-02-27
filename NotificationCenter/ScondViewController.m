//
//  ScondViewController.m
//  NotificationCenter
//
//  Created by Ashish Chauhan on 26/02/16.
//  Copyright © 2016 Ashish Chauhan. All rights reserved.
//

#import "ScondViewController.h"
#import "ThirdViewController.h"
@interface ScondViewController ()

@end

@implementation ScondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
 //   [[NSNotificationCenter defaultCenter] addObserver:self selector:(ChangeBgcolor:) name:@"gamex" object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(receiveTestNotification:)
                                                 name:@"login"
                                               object:nil ];
    
    
    

}


- (void) receiveTestNotification:(NSNotification *) notification
{
    // [notification name] should always be @"TestNotification"
    // unless you use this method for observation of other notifications
    // as well.
    
    if ([[notification name] isEqualToString:@"login"])

       

    
        self.view.backgroundColor = [UIColor orangeColor];
}



-(IBAction)Brodcast:(id)sender
{
    
    
    
//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle: nil];
//    ThirdViewController *lvc = [storyboard instantiateViewControllerWithIdentifier:@"third"];
//    [self.navigationController pushViewController:lvc animated:YES];
//    

    
    ThirdViewController *th = [self.storyboard instantiateViewControllerWithIdentifier:@"third"];
    [self presentViewController:th animated:YES completion:nil];
    
  
    
    NSDictionary* userInfo = @{@"Name": @"gamex"};
    
    NSNotificationCenter* nc = [NSNotificationCenter defaultCenter];
    [nc postNotificationName:@"login" object:self userInfo:userInfo];

    
    
    
    
    
    
}



-(void)ChangeBgcolor
{

    self.view.backgroundColor = [UIColor redColor];
    NSLog(@"Screen Two color change to Red");
}


- (void) dealloc
{
    // If you don't remove yourself as an observer, the Notification Center
    // will continue to try and send notification objects to the deallocated
    // object.
   // [[NSNotificationCenter defaultCenter] removeObserver:self];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
