//
//  ThirdViewController.m
//  NotificationCenter
//
//  Created by Ashish Chauhan on 26/02/16.
//  Copyright © 2016 Ashish Chauhan. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    //   [[NSNotificationCenter defaultCenter] addObserver:self selector:(ChangeBgcolor:) name:@"gamex" object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(receiveTestNotification:)
                                                 name:@"login"
                                               object:nil];
    
}


- (void) receiveTestNotification:(NSNotification *) notification
{
        
    if ([[notification name] isEqualToString:@"login"])
    {
      
        NSDictionary* userInfo = notification.userInfo;
    NSString* name = (NSString*)userInfo[@"Name"];
    NSLog (@"Successfully received test notification! %@", name);
  
    
    self.view.backgroundColor = [UIColor greenColor];
    }
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
