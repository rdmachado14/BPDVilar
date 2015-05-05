//
//  BPDUnidadFederativaStore.h
//  TableView
//
//  Created by Vilar da Camara Neto on 15-04-10.
//  Copyright (c) 2015 Vilar da Camara Neto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BPDUnidadeFederativaStore : NSObject

@property (nonatomic, readonly) NSArray *items;

+ (BPDUnidadeFederativaStore *)states;
+ (BPDUnidadeFederativaStore *)districts;

@end
