//
//  BIDNameAndColorCell.h
//  KingsleyManagementCorpApp
//
//  Created by John Christiansen on 8/4/14.
//  Copyright (c) 2014 John Christiansen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDNameAndColorCell : UITableViewCell
@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *occupencyPercent;
@property (copy, nonatomic) NSString *periodVariance;
@property (copy, nonatomic) NSString *YTDVariance;

@end
