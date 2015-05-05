//
//  BPDEditViewController.m
//  TableView
//
//  Created by Vilar da Camara Neto on 15-04-10.
//  Copyright (c) 2015 Vilar da Camara Neto. All rights reserved.
//

#import "BPDEditViewController.h"

@interface BPDEditViewController ()

@property (weak, nonatomic) IBOutlet UITextField *labelCode;
@property (weak, nonatomic) IBOutlet UITextField *labelName;

@end

@implementation BPDEditViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.labelCode.text = self.uf.code;
    self.labelName.text = self.uf.name;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancelButtonClicked:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)doneButtonClicked:(id)sender {
    self.uf.code = self.labelCode.text;
    self.uf.name = self.labelName.text;
    [self.navigationController popViewControllerAnimated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
