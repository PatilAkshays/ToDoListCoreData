//
//  AC+CoreDataProperties.h
//  APCoreDataToDoList
//
//  Created by Mac on 16/07/1938 Saka.
//  Copyright © 1938 Saka Aksh. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "AC.h"

NS_ASSUME_NONNULL_BEGIN

@interface AC (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *price;
@property (nullable, nonatomic, retain) NSString *model;

@end

NS_ASSUME_NONNULL_END
