//
//  BPDUnidadeFederativa.m
//  TableView
//
//  Created by Vilar da Camara Neto on 15-04-10.
//  Copyright (c) 2015 Vilar da Camara Neto. All rights reserved.
//

#import "BPDUnidadeFederativa.h"

@implementation BPDUnidadeFederativa

- (instancetype)initWithCode:(NSString *)code andName:(NSString *)name
{
    self = [super init];
    if (self)
    {
        self.code = code;
        self.name = name;
    }
    return self;
}

@end
