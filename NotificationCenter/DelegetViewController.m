//
//  DelegetViewController.m
//  NotificationCenter
//
//  Created by Ashish Chauhan on 27/02/16.
//  Copyright © 2016 Ashish Chauhan. All rights reserved.
//

#import "DelegetViewController.h"
#import "DepartmentTableViewController.h"

@interface DelegetViewController ()

@end

@implementation DelegetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{

    if ([segue.identifier isEqualToString:@"departmentsSegue"]) {
        
        
        DepartmentTableViewController *vc= [segue destinationViewController];
        vc.deleget = self;
        
    }
}

-(void)didselectwith:(DepartmentTableViewController *)controller department:(NSString *)department
{
    [controller dismissViewControllerAnimated:YES completion:nil];

    self.lbldepartment.text = department;

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
