//
//  ViewController.m
//  SDImageDemo
//
//  Created by apple on 25/07/2016.
//  Copyright © 2016 apple. All rights reserved.
//

#import "ViewController.h"
#import "MyCell.h"

#define cellIdentifier @"MyCellIdentifier"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *myTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_myTableView registerNib:[UINib nibWithNibName:@"MyCell" bundle:nil] forCellReuseIdentifier:cellIdentifier];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MyCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
//    http://img4q.duitang.com/uploads/item/201407/10/20140710162655_WiF5Z.thumb.224_0.gif
//    http://fs.921cha.com/43/c4e9862b199e47cf82a699f2ad439e73.jpg-88w
    
    [cell showImageUrl:@"http://img4q.duitang.com/uploads/item/201407/10/20140710162655_WiF5Z.thumb.224_0.gif"];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60.0;
}

@end
