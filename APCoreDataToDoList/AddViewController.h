//
//  AddViewController.h
//  APCoreDataToDoList
//
//  Created by Mac on 16/07/1938 Saka.
//  Copyright © 1938 Saka Aksh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddViewController : UIViewController <UITextFieldDelegate>

{
    
    UISegmentedControl *localSegment;
    
}
@property (strong, nonatomic) IBOutlet UITextField *textFieldFirst;

@property (strong, nonatomic) IBOutlet UITextField *textFieldSecond;

@property (strong, nonatomic) IBOutlet UITextField *textFieldThird;

- (IBAction)segmentSecond:(id)sender;

- (IBAction)buttonCancel:(id)sender;


- (IBAction)buttonSave:(id)sender;

@end
