//
//  MyCell.m
//  SDImageDemo
//
//  Created by apple on 25/07/2016.
//  Copyright © 2016 apple. All rights reserved.
//

#import "MyCell.h"
#import <SDWebImage/UIButton+WebCache.h>

@interface MyCell()

@property (weak, nonatomic) IBOutlet UIButton *myButton;

@end

@implementation MyCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)showImageUrl:(NSString *)urlStr {
    NSURL *url = [NSURL URLWithString:urlStr];
    [_myButton sd_setImageWithURL:url forState:UIControlStateNormal placeholderImage:nil];
    [_myButton sd_setImageWithURL:url forState:UIControlStateHighlighted placeholderImage:nil];
}

@end
