//
//  DepartmentTableViewController.h
//  NotificationCenter
//
//  Created by Ashish Chauhan on 27/02/16.
//  Copyright © 2016 Ashish Chauhan. All rights reserved.
//

#import <UIKit/UIKit.h>


@class DepartmentTableViewController;

@protocol departmentDeleget <NSObject>

-(void)didselectwith:(DepartmentTableViewController *)controller department:(NSString *)department;

@end
@interface DepartmentTableViewController : UITableViewController


@property(nonatomic,weak)id <departmentDeleget>deleget;
@end
