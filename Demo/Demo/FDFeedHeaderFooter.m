//
//  FDFeedHeader.m
//  Demo
//
//  Created by dimon on 16/05/2019.
//  Copyright © 2019 forkingdog. All rights reserved.
//

#import "FDFeedHeaderFooter.h"

@implementation FDFeedHeaderFooter

- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithReuseIdentifier:reuseIdentifier];
    if (self != nil)
    {
        [self loadSubviews];
        [self installLayoutConstraints];
    }
    return self;
}

- (void)loadSubviews
{
    UILabel *titleLabel = [[UILabel alloc] init];
    self->_titleLabel = titleLabel;
    [self.contentView addSubview:titleLabel];
}

- (void)installLayoutConstraints
{
    self->_titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *top = [self->_titleLabel.topAnchor constraintEqualToAnchor:self.contentView.topAnchor constant:10];
    top.active = YES;
    NSLayoutConstraint *leading = [self->_titleLabel.leadingAnchor constraintEqualToAnchor:self.contentView.leadingAnchor constant:10];
    leading.active = YES;
    NSLayoutConstraint *bottom = [self->_titleLabel.bottomAnchor constraintEqualToAnchor:self.contentView.bottomAnchor constant:-10];
    bottom.priority = 999;
    bottom.active = YES;
    NSLayoutConstraint *trailing = [self->_titleLabel.trailingAnchor constraintEqualToAnchor:self.contentView.trailingAnchor constant:-10];
    trailing.priority = 999;
    trailing.active = YES;
}

@end
