//
//  ViewController.m
//  TableView
//
//  Created by Vilar da Camara Neto on 15-04-08.
//  Copyright (c) 2015 Vilar da Camara Neto. All rights reserved.
//

#import "BPDMainViewController.h"
#import "BPDUnidadeFederativaStore.h"
#import "BPDUnidadeFederativa.h"
#import "BPDEditViewController.h"
#import "BPDTableViewCell.h"

@interface BPDMainViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation BPDMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];

    if (indexPath) {
        [self.tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    BPDEditViewController *destination = segue.destinationViewController;
    
    if (indexPath.section == 0) {
        destination.uf = [[BPDUnidadeFederativaStore states].items objectAtIndex:indexPath.row];
    } else {
        destination.uf = [[BPDUnidadeFederativaStore districts].items objectAtIndex:indexPath.row];
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return @"Estados";
    } else {
        return @"Distritos";
    }
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    NSInteger total;

    if (section == 0) {
        total = [[BPDUnidadeFederativaStore states].items count];
    } else {
        total = [[BPDUnidadeFederativaStore districts].items count];
    }
    return [NSString stringWithFormat:@"Total: %ld item(ns)", (long)total];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return [[BPDUnidadeFederativaStore states].items count];
    } else {
        return [[BPDUnidadeFederativaStore districts].items count];
   }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *identifier;
    if (indexPath.row == 0) {
        identifier = @"MegaFuckerCell";
    } else if (indexPath.row < 5) {
        identifier = @"BasicCell1";
    } else {
        identifier = @"BasicCell2";
    }

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    /*
    if (!cell) {
        NSLog(@"Uma celula acabou de ser criada!");
        UITableViewCellStyle style = (indexPath.row < 5 ? UITableViewCellStyleValue1 : UITableViewCellStyleSubtitle);

        cell = [[UITableViewCell alloc] initWithStyle:style reuseIdentifier:identifier];
    }
     */

    NSArray *items;
    if (indexPath.section == 0) {
        items = [BPDUnidadeFederativaStore states].items;
    } else {
        items = [BPDUnidadeFederativaStore districts].items;
    }
    BPDUnidadeFederativa *uf = [items objectAtIndex:indexPath.row];

    UIImage *icon = [UIImage imageNamed:uf.code];

    cell.textLabel.text = uf.name;
    cell.detailTextLabel.text = uf.code;
    cell.imageView.image = icon;
    
    if(indexPath.row == 0)
    {
        BPDTableViewCell *customCell = (BPDTableViewCell *) cell;
        customCell.minhaLabel.text = @"Hello, Cell!";
        customCell.uf = uf;
    }

//    if (indexPath.row == 5) {
//        cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
//    } else {
//        cell.accessoryType = UITableViewCellAccessoryNone;
//    }

    return cell;
}

@end








