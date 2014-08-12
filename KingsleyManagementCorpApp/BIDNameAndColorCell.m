//
//  BIDNameAndColorCell.m
//  KingsleyManagementCorpApp
//
//  Created by John Christiansen on 8/4/14.
//  Copyright (c) 2014 John Christiansen. All rights reserved.
//

#import "BIDNameAndColorCell.h"

@interface BIDNameAndColorCell ()

@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *occupencyPercentLabel;
@property (strong, nonatomic) IBOutlet UILabel *periodVarianceLabel;
@property (strong, nonatomic) IBOutlet UILabel *YTDVarianceLabel;



@end



@implementation BIDNameAndColorCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        CGRect nameLabelRect = CGRectMake(0, 5, 70, 15);
        UILabel *nameMarker = [[UILabel alloc] initWithFrame:nameLabelRect];
        nameMarker.textAlignment = NSTextAlignmentRight;
        nameMarker.text = @"Name:";
        nameMarker.font = [UIFont boldSystemFontOfSize:12];
        [self.contentView addSubview:nameMarker];
        
        CGRect occupencyPercentRect = CGRectMake(0, 26, 70, 15);
        UILabel *occupencyPercentMarker = [[UILabel alloc] initWithFrame:occupencyPercentRect];
        occupencyPercentMarker.textAlignment = NSTextAlignmentRight;
        nameMarker.text = @"Occupency Percent:";
        occupencyPercentMarker.font = [UIFont boldSystemFontOfSize:12];
        [self.contentView addSubview:occupencyPercentMarker];
        
        CGRect periodVarianceRect = CGRectMake(0, 26, 70, 15);
        UILabel *periodVarianceMarker = [[UILabel alloc] initWithFrame:periodVarianceRect];
        periodVarianceMarker.textAlignment = NSTextAlignmentRight;
        nameMarker.text = @"Period Variance:";
        periodVarianceMarker.font = [UIFont boldSystemFontOfSize:12];
        [self.contentView addSubview:periodVarianceMarker];
        
        CGRect YTDVarianceRect = CGRectMake(0, 26, 70, 15);
        UILabel *YTDVarianceMarker = [[UILabel alloc] initWithFrame:YTDVarianceRect];
        YTDVarianceMarker.textAlignment = NSTextAlignmentRight;
        nameMarker.text = @"YTD Variance:";
        YTDVarianceMarker.font = [UIFont boldSystemFontOfSize:12];
        [self.contentView addSubview:YTDVarianceMarker];
        
        CGRect nameValueRect = CGRectMake(80, 5, 200, 15);
        _nameLabel = [[UILabel alloc] initWithFrame:nameValueRect];
        [self.contentView addSubview:_nameLabel];

        CGRect occupencyPercentValueRect = CGRectMake(80, 5, 200, 15);
        _occupencyPercentLabel = [[UILabel alloc] initWithFrame:occupencyPercentValueRect];
        [self.contentView addSubview:_occupencyPercentLabel];
        
        CGRect periodVarianceValueRect = CGRectMake(80, 5, 200, 15);
        _periodVarianceLabel = [[UILabel alloc] initWithFrame:periodVarianceValueRect];
        [self.contentView addSubview:_periodVarianceLabel];

        CGRect YTDVarianceValueRect = CGRectMake(80, 5, 200, 15);
        _YTDVarianceLabel = [[UILabel alloc] initWithFrame:YTDVarianceValueRect];
        [self.contentView addSubview:_YTDVarianceLabel];
    }
    return self;
}

- (void)setName:(NSString *)n
{
    if (![n isEqualToString:_name]){
        _name = [n copy];
        self.nameLabel.text = _name;
    }
}

- (void)setOccupencyPercent:(NSString *)occupencyPercent
{
    if (![occupencyPercent isEqualToString:_occupencyPercent]){
        _occupencyPercent = [occupencyPercent copy];
        self.occupencyPercentLabel.text = _occupencyPercent;
        
    }
}

- (void)setPeriodVariance:(NSString *)periodVariance
{
    if (![periodVariance isEqualToString:_periodVariance]){
        _periodVariance = [periodVariance copy];
        self.periodVarianceLabel.text = _periodVariance;
        
        if ([self.periodVarianceLabel.text integerValue] > 0){
            self.periodVarianceLabel.textColor = [UIColor greenColor];
        }else if ([self.periodVarianceLabel.text integerValue] < 0){
            self.periodVarianceLabel.textColor = [UIColor redColor];
        }else{
            self.periodVarianceLabel.textColor = [UIColor yellowColor];
        }
        
        
        
    }
}

- (void)setYTDVariance:(NSString *)YTDVariance
{
    if (![YTDVariance isEqualToString:_YTDVariance]){
        _YTDVariance = [YTDVariance copy];
        self.YTDVarianceLabel.text = _YTDVariance;
        
    }
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
