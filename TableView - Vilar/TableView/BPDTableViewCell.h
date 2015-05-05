//
//  BPDTableViewCell.h
//  TableView
//
//  Created by Filipe da Silva Oliveira on 22/04/15.
//  Copyright (c) 2015 Vilar da Camara Neto. All rights reserved.
//

#import "BPDUnidadeFederativa.h"
#import <UIKit/UIKit.h>

@interface BPDTableViewCell : UITableViewCell

@property (weak, nonatomic) BPDUnidadeFederativa *uf;

@property (weak, nonatomic) IBOutlet UILabel *minhaLabel;

@end
