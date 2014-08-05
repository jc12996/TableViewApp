//
//  ViewController.m
//  KingsleyManagementCorpApp
//
//  Created by John Christiansen on 8/4/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//  An app to display for a job interview at KingsleyManagement Corporation. 

#import "ViewController.h"
#import "BIDNameAndColorCell.h"


static NSString *CellTableIdentifier = @"CellTableIdentifier";

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *occupencyPercentLabel;
@property (strong, nonatomic) IBOutlet UILabel *periodVarianceLabel;
@property (strong, nonatomic) IBOutlet UILabel *YTDVarianceLabel;
@property (copy, nonatomic) NSArray *kingsley;

@end



@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    self.kingsley = @[@{@"Name" : @"Rob", @"Occupency Percent" : @"99.3%", @"Period Variance" : @"0", @"YTD Variance" : @"2"},
                      @{@"Name" : @"Nate", @"Occupency Percent" : @"93.3%", @"Period Variance" : @"3", @"YTD Variance" : @"1"},
                      @{@"Name" : @"Bing", @"Occupency Percent" : @"94.5%", @"Period Variance" : @"0", @"YTD Variance" : @"12"},
                      @{@"Name" : @"John", @"Occupency Percent" : @"99.3%", @"Period Variance" : @"0", @"YTD Variance" : @"42"},
                      @{@"Name" : @"Rob", @"Occupency Percent" : @"67.3%", @"Period Variance" : @"-3", @"YTD Variance" : @"2"},
                      @{@"Name" : @"Steve", @"Occupency Percent" : @"67.3%", @"Period Variance" : @"-31", @"YTD Variance" : @"6"},
                      @{@"Name" : @"Jannet", @"Occupency Percent" : @"33.3%", @"Period Variance" : @"3", @"YTD Variance" : @"4"},
                      @{@"Name" : @"Tanner", @"Occupency Percent" : @"54.6%", @"Period Variance" : @"2", @"YTD Variance" : @"23"},
                      @{@"Name" : @"Wyatt", @"Occupency Percent" : @"56.7%", @"Period Variance" : @"7", @"YTD Variance" : @"25"},
                      @{@"Name" : @"Kyle", @"Occupency Percent" : @"45.3%", @"Period Variance" : @"5", @"YTD Variance" : @"62"},
                      @{@"Name" : @"Conner", @"Occupency Percent" : @"23.4%", @"Period Variance" : @"3", @"YTD Variance" : @"32"},
                      @{@"Name" : @"Alica M.", @"Occupency Percent" : @"43.4%", @"Period Variance" : @"6", @"YTD Variance" : @"21"},
                      @{@"Name" : @"Madison", @"Occupency Percent" : @"34.2%", @"Period Variance" : @"2", @"YTD Variance" : @"3"},
                      @{@"Name" : @"Tarzan", @"Occupency Percent" : @"35.2%", @"Period Variance" : @"-3", @"YTD Variance" : @"62"},
                      @{@"Name" : @"Bob", @"Occupency Percent" : @"45.3%", @"Period Variance" : @"-10", @"YTD Variance" : @"32"},
                      @{@"Name" : @"Joe", @"Occupency Percent" : @"24.2%", @"Period Variance" : @"-4", @"YTD Variance" : @"62"},
                      @{@"Name" : @"Stewart", @"Occupency Percent" : @"65.3%", @"Period Variance" : @"-5", @"YTD Variance" : @"32"},
                      @{@"Name" : @"Christopher", @"Occupency Percent" : @"35.4%", @"Period Variance" : @"-1", @"YTD Variance" : @"2"}];


    UITableView *tableView = (id)[self.view viewWithTag:1];
    [tableView registerClass: [BIDNameAndColorCell class]
      forCellReuseIdentifier:CellTableIdentifier];
    tableView.rowHeight = 40;
    UINib *nib = [UINib nibWithNibName:@"BIDNameAndColorCell" bundle:nil];
    [tableView registerNib:nib forCellReuseIdentifier:CellTableIdentifier];
    UIEdgeInsets contentInset = tableView.contentInset;
    contentInset.top = 20;
    [tableView setContentInset:contentInset];
    
    
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return [self.kingsley count];
}



- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    BIDNameAndColorCell *cell = [tableView dequeueReusableCellWithIdentifier:CellTableIdentifier
                                                                forIndexPath:indexPath];
    
    NSDictionary *rowData = self.kingsley[indexPath.row];
    
    cell.name = rowData[@"Name"];
    cell.occupencyPercent = rowData[@"Occupency Percent"];
    cell.periodVariance = rowData[@"Period Variance"];
    cell.YTDVariance = rowData[@"YTD Variance"];
    
    return cell;
}



//Don't Touch
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end


//Extra Practice Code:
// If I don't want a custom table do the following:
//    self.dwarves = @[@"Rob", @"Nate", @"Bing", @"John",
//                     @"Ted", @"Ned",
//                     @"Thorin", @"Dorin", @"Norin",  @"Orin"];
//    //Add Image
////    UIImage *image = [UIImage imageNamed:@"star"];
////    cell.imageView.image = image;
//
//    //Change font
//    cell.textLabel.font = [UIFont boldSystemFontOfSize:10];
//
//
//    //For assigning sub data to the main cell.
//    cell.textLabel.text = self.dwarves[indexPath.row];
//    if (indexPath.row < 7) {//The first 6 items will be assigned Mr. Disney, etc
//        cell.detailTextLabel.text = @"Mr. Disney";
//    } else {
//        cell.detailTextLabel.text = @"Mr. Tolkien";
//    }
//    return cell;
//}
//
////Indents Table Rows one all the way down...
////- (NSInteger)tableView:(UITableView *)tableView
////indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath
////{
////    return indexPath.row;
////}
//
//
////The following code makes a model that tells me what was the last row I selected was.
//- (NSIndexPath *)tableView:(UITableView *)tableView
//  willSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    if (indexPath.row == 0) {
//        return nil;
//    } else{
//        return indexPath;
//    }
//}
//
//- (void)tableView:(UITableView *)tableView
//didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    NSString *rowValue = self.dwarves[indexPath.row];
//    NSString *message = [[NSString alloc] initWithFormat:@"You selected %@", rowValue];
//    UIAlertView *alert = [[UIAlertView alloc]
//                          initWithTitle:@"Row Selected!"
//                          message:message
//                          delegate:nil
//                          cancelButtonTitle:@"Back"
//                          otherButtonTitles:nil];
//
//    [alert show];
//    [tableView deselectRowAtIndexPath:indexPath animated:YES];
//
//}
//
////SPecifiy height of the table view row's
//- (CGFloat)tableView:(UITableView *)tableView
//heightForRowAtIndexPath:(NSString *)indexPath
//{
//    return 50;
//}
//




