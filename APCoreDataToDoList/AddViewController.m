//
//  AddViewController.m
//  APCoreDataToDoList
//
//  Created by Mac on 16/07/1938 Saka.
//  Copyright © 1938 Saka Aksh. All rights reserved.
//

#import "AddViewController.h"
#import "AppDelegate.h"

@interface AddViewController ()

@end

@implementation AddViewController


-(NSManagedObjectContext *)managedObjectContext {
    
    NSManagedObjectContext *context = nil;
    
    id delegate = [[UIApplication sharedApplication]delegate];
    
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        
        context = [delegate managedObjectContext];
    }
    return context;
}




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
   
    [textField resignFirstResponder];
    
        if (textField == self.textFieldFirst) {
            [self.textFieldSecond resignFirstResponder];
        
         }
        else if (textField == self.textFieldThird) {
        
           [self.textFieldThird resignFirstResponder];
       }
        
    
     return YES;
    
}


- (IBAction)buttonSave:(id)sender {
    
    NSString *firstField = self.textFieldFirst.text;
    
    NSString *secondField = self.textFieldSecond.text;
    
    NSString *thirdField = self.textFieldThird.text;
    
    if (localSegment.selectedSegmentIndex == 0) {
        
        if (firstField.length > 0) {
            
            if (secondField.length >0) {
                
                if (thirdField.length>0) {
                    
                    
                    NSManagedObjectContext *context = [self managedObjectContext];
                    
                    NSManagedObject *newDevice = [NSEntityDescription insertNewObjectForEntityForName:@"TV" inManagedObjectContext:context];
                    
                    [newDevice setValue:firstField forKey:@"model"];
                    
                    [newDevice setValue:secondField forKey:@"price"];
                    
                    [newDevice setValue:thirdField forKey:@"year"];
                    
                    
//                    NSLog(@"%@",firstField);
//                    
//                    NSLog(@"%@",secondField);
//                    NSLog(@"%@",thirdField);

                    
                    NSError *error;
                    
                    if ([context save:&error]) {
                        
                        NSLog(@"Saved");
                        
                     //   [self alertWithTitle:@"Saved!" message:@""];

                        [self.navigationController popViewControllerAnimated:YES];
                    }
                    else{
                        NSLog(@"Unable to save : %@",error.localizedDescription);
                        
                        [self alertWithTitle:@"Unable to Save!" message:@"Please Try Again"];


                    }
                }
            }
        }
    }
    if (localSegment.selectedSegmentIndex == 1) {
        
        if (firstField.length > 0) {
            
            if (secondField.length >0) {
                
                if (thirdField.length>0) {
                    
                   
                    NSManagedObjectContext *context = [self managedObjectContext];
                    
                    NSManagedObject *newDevice = [NSEntityDescription insertNewObjectForEntityForName:@"SmartPhone" inManagedObjectContext:context];
                    
                    [newDevice setValue:firstField forKey:@"name"];
                    
                    [newDevice setValue:secondField forKey:@"company"];
                    
                    [newDevice setValue:thirdField forKey:@"price"];
                    
                    NSError *error;
                    
                    if ([context save:&error]) {
                        
                        NSLog(@"Saved");
                        
                      //  [self alertWithTitle:@"Saved!" message:@""];

                        [self.navigationController popViewControllerAnimated:YES];
                    }
                    else{
                        NSLog(@"Unable to save : %@",error.localizedDescription);
                        
                        [self alertWithTitle:@"Unable to Save!" message:@"Please Try Again"];

                        
                    }
                }
            }
        }
    }
    if (localSegment.selectedSegmentIndex == 2) {
        
        if (firstField.length > 0) {
            
            if (secondField.length >0) {

                
                    NSManagedObjectContext *context = [self managedObjectContext];
                    
                    NSManagedObject *newDevice = [NSEntityDescription insertNewObjectForEntityForName:@"AC" inManagedObjectContext:context];
                    
                    [newDevice setValue:firstField forKey:@"model"];
                    
                    [newDevice setValue:secondField forKey:@"price"];
                    
                
                    
                    NSError *error;
                    
                    if ([context save:&error]) {
                        
                        NSLog(@"Saved");
                        
               //         [self alertWithTitle:@"Saved!" message:@""];

                        
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                    else{
                        NSLog(@"Unable to save : %@",error.localizedDescription);
                        
                        [self alertWithTitle:@"Unable to Save!" message:@"Please Try Again"];

                        
                    }
                }
            }
        }
    
}
- (IBAction)segmentSecond:(id)sender {
    localSegment = sender;
    
    if (localSegment.selectedSegmentIndex == 0) {
        
        [self.textFieldThird setHidden:NO];

        [_textFieldFirst setPlaceholder:@"Enter Model:"];
        
        [_textFieldSecond setPlaceholder:@"Enter Price:"];
        
        [_textFieldThird setPlaceholder:@"Enter Year:"];
        
        
        [self buttonSave:sender];
    }
    else if (localSegment.selectedSegmentIndex == 1) {
        
        [self.textFieldThird setHidden:NO];

        [_textFieldFirst setPlaceholder:@"Enter Name:"];
        
        [_textFieldSecond setPlaceholder:@"Enter Company:"];
        
        [_textFieldThird setPlaceholder:@"Enter Price:"];
        
        [self buttonSave:sender];
    }
    else if (localSegment.selectedSegmentIndex == 2) {
        
        [self.textFieldThird setHidden:YES];

        
        [_textFieldFirst setPlaceholder:@"Enter Model:"];
        
        [_textFieldSecond setPlaceholder:@"Enter Price:"];
        
        
        [self buttonSave:sender];
    }
    
}

- (IBAction)buttonCancel:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
    
    
}

-(void)alertWithTitle: (NSString *)title message:(NSString *)message {
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *OK =[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        
        [self dismissViewControllerAnimated:YES completion:nil];
        [self viewDidLoad];
    }];
    
    [alert addAction:OK];
    
    
    [self presentViewController:alert animated:YES completion:nil];
    
}


@end
