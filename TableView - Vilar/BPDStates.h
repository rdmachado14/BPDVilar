//
//  BPDStates.h
//  TableView
//
//  Created by Rodrigo DAngelo Silva Machado on 5/5/15.
//  Copyright (c) 2015 Vilar da Camara Neto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface BPDStates : NSManagedObject

@property (nonatomic, retain) NSString * code;
@property (nonatomic, retain) NSString * name;

@end
