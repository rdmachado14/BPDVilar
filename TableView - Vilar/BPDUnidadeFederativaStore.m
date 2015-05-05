//
//  BPDUnidadeFederativaStore.m
//  TableView
//
//  Created by Vilar da Camara Neto on 15-04-10.
//  Copyright (c) 2015 Vilar da Camara Neto. All rights reserved.
//

#import "BPDUnidadeFederativaStore.h"
#import "BPDUnidadeFederativa.h"

@interface BPDUnidadeFederativaStore ()

@property (nonatomic) NSMutableArray *itemsArray;

@end


@implementation BPDUnidadeFederativaStore

+ (BPDUnidadeFederativaStore *)states
{
    static BPDUnidadeFederativaStore *singleton;
    
    if (!singleton) {
        NSArray *items = @[
                           [[BPDUnidadeFederativa alloc] initWithCode:@"AC" andName:@"Acre"],
                           [[BPDUnidadeFederativa alloc] initWithCode:@"AL" andName:@"Alagoas"],
                           [[BPDUnidadeFederativa alloc] initWithCode:@"AM" andName:@"Amazonas"],
                           ];

        singleton = [[BPDUnidadeFederativaStore alloc] initWithArray:items];
    }
    return singleton;
}

+ (BPDUnidadeFederativaStore *)districts
{
    static BPDUnidadeFederativaStore *singleton;
    
    if (!singleton) {
        NSArray *items = @[
                           [[BPDUnidadeFederativa alloc] initWithCode:@"DF" andName:@"Distrito Federal"],
                           ];
        
        singleton = [[BPDUnidadeFederativaStore alloc] initWithArray:items];
    }
    return singleton;
}

- (instancetype)initWithArray:(NSArray *)items
{
    self = [super init];
    if (self) {
        self.itemsArray = [[NSMutableArray alloc] initWithArray:items];
    }
    return self;
}

- (NSArray *)items {
    return self.itemsArray;
}

@end











