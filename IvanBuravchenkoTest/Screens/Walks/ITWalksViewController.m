//
//  ITWalksViewController.m
//  IvanBuravchenkoTest
//
//  Created by Vladimir Kalinichenko on 2/9/17.
//  Copyright © 2017 test. All rights reserved.
//

#import "ITWalksViewController.h"
#import "ITWalkCell.h"
#import "ITWalksController.h"

@interface ITWalksViewController () <UITableViewDataSource>

@property (nonatomic, weak) IBOutlet UITableView *tableView;
@property (nonatomic, strong) ITWalksController *walksController;
@property (nonatomic, strong) NSArray<ITWalk *> *walks;

@end

@implementation ITWalksViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 100;
    
    self.walksController = [ITWalksController new];
    

    [self.walksController getWalksWithSuccessCompletionHandler:^(NSArray<ITWalk *> *walks) {
        self.walks = walks;
        [self.tableView reloadData];
    } failureSuccessCompletionHandler:^(NSError *error) {
        NSLog(@"BLYA");
    }];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.walks.count;
}

static NSString *walkCell = @"walkCell";

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ITWalkCell *cell = (ITWalkCell *)[tableView dequeueReusableCellWithIdentifier:walkCell forIndexPath:indexPath];
    cell.walk = self.walks[indexPath.row];
    return cell;
}

@end
