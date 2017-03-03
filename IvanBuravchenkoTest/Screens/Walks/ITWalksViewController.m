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
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 500, 500)];
    [self.view addSubview:imageView];
    [imageView sd_setImageWithURL:[NSURL URLWithString:@"http://4k.com/wp-content/uploads/2014/06/lg-curved-4k-tv-790x4441.jpg"]];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(10 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.tableView.rowHeight = UITableViewAutomaticDimension;
        self.tableView.estimatedRowHeight = 100;
        
        self.walksController = [ITWalksController new];
        
        
        [self.walksController getWalksWithSuccessCompletionHandler:^(NSArray<ITWalk *> *walks) {
            self.walks = walks;
            [self.tableView reloadData];
        } failureSuccessCompletionHandler:^(NSError *error) {
            NSLog(@"BLYA");
        }];
    });
    
    dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        //long opertation
        
        
//        [self.delegate я законил];
    };

    
    dispatch_async(dispatch_get_main_queue(), ^{
        
    });
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.walks.count;
}

static NSString *walkCell = @"walkCell";

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ITWalkCell *cell = (ITWalkCell *)[tableView dequeueReusableCellWithIdentifier:walkCell forIndexPath:indexPath];
//    cell.walk = self.walks[indexPath.row];
    return cell;
}

@end
