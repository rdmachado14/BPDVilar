//
//  BPDTableViewCell.m
//  TableView
//
//  Created by Filipe da Silva Oliveira on 22/04/15.
//  Copyright (c) 2015 Vilar da Camara Neto. All rights reserved.
//

#import "BPDTableViewCell.h"

@implementation BPDTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (IBAction)btClick:(id)sender
{
    NSLog(@"Botao Clicado! %@",self.uf.name);
}

@end