//
//  DelegetViewController.h
//  NotificationCenter
//
//  Created by Ashish Chauhan on 27/02/16.
//  Copyright © 2016 Ashish Chauhan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DepartmentTableViewController.h"


@interface DelegetViewController : UIViewController<departmentDeleget>
@property (strong, nonatomic) IBOutlet UILabel *lbldepartment;

@end
