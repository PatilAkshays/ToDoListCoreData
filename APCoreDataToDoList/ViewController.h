//
//  ViewController.h
//  APCoreDataToDoList
//
//  Created by Mac on 16/07/1938 Saka.
//  Copyright © 1938 Saka Aksh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "AddViewController.h"
#import "CustomTableViewCell.h"

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    NSMutableArray *tvArray;
    NSMutableArray *smartPhoneArray;
    NSMutableArray *acArray;
    UISegmentedControl *SegmentControl;
    
    
}


@property (strong, nonatomic) IBOutlet UITableView *tableView;

- (IBAction)segmentFirst:(id)sender;

- (IBAction)addButton:(id)sender;

@end

