//
//  BPDUnidadeFederativa.h
//  TableView
//
//  Created by Vilar da Camara Neto on 15-04-10.
//  Copyright (c) 2015 Vilar da Camara Neto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BPDUnidadeFederativa : NSObject

@property (nonatomic) NSString *code;
@property (nonatomic) NSString *name;

- (instancetype)initWithCode:(NSString *)code andName:(NSString *)name;

@end
