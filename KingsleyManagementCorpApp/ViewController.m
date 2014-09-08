//
//  ViewController.m
//  KingsleyManagementCorpApp
//
//  Created by John Christiansen on 8/4/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//  An app to display for a job interview at KingsleyManagement Corporation. 

#import "ViewController.h"
#import "BIDNameAndColorCell.h"
#import "KLHorizontalSelect.h"




static NSString *CellTableIdentifier = @"CellTableIdentifier";

@interface ViewController ()


@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *occupencyPercentLabel;
@property (strong, nonatomic) IBOutlet UILabel *periodVarianceLabel;
@property (strong, nonatomic) IBOutlet UILabel *YTDVarianceLabel;
@property (copy, nonatomic) NSArray *kingsley;
@property (weak, nonatomic) IBOutlet UIView *borders;
@property (weak, nonatomic) IBOutlet UIView *midborders;
@property (weak, nonatomic) IBOutlet UIView *botborders;




@end





@implementation ViewController


//-(void)screenWasSwiped{
//    [_lblSwipe setText:@"Thank You"];
//    NSLog(@"You Swiped the screen!");
//}

- (void)viewDidLoad
{
    [super viewDidLoad];
    

    [Scroller setScrollEnabled:YES];
    [Scroller setContentSize:CGSizeMake(280, 500)];
    
    _borders.layer.borderWidth=0.25f;
    _borders.layer.borderColor=[[UIColor whiteColor] CGColor];
    
    _midborders.layer.borderWidth=0.25f;
    _midborders.layer.borderColor=[[UIColor whiteColor] CGColor];
    
    _botborders.layer.borderWidth=0.75f;
    _botborders.layer.borderColor=[[UIColor whiteColor] CGColor];
    
//    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(screenWasSwiped)];
//    swipeRight.numberOfTouchesRequired = 1;
//    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
//    [self.view addGestureRecognizer:swipeRight];
    
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
    tableView.rowHeight = 60;
    UINib *nib = [UINib nibWithNibName:@"BIDNameAndColorCell" bundle:nil];
    [tableView registerNib:nib forCellReuseIdentifier:CellTableIdentifier];
    UIEdgeInsets contentInset = tableView.contentInset;
    contentInset.top = 20;
    [tableView setContentInset:contentInset];
    
    
}

//dismiss the keyboard when press enter
- (BOOL)textFieldShouldReturn:(UITextField *)textField { [textField resignFirstResponder];
    return YES;
    
}

//dismiss the keyboard when touch out
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
}

//returns the array string
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

//Open MFMail and set preferences
-(IBAction) openEmail {
    MFMailComposeViewController *mailComposer = [[MFMailComposeViewController alloc] init];
    [mailComposer setMailComposeDelegate:self];
    if ([MFMailComposeViewController canSendMail]) {
        [mailComposer setToRecipients:[NSArray arrayWithObjects:@"johnchristiansen@gmail.com", nil]];
        [mailComposer setSubject:@"OR Report"];
        [mailComposer setMessageBody:@"Here is the current OR report" isHTML:NO]; [mailComposer setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
        [self presentModalViewController:mailComposer animated:YES];
//        [mailComposer release];
    }else {
//        [mailComposer release];
    }
}

////Dismiss MFMail
- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error {
    if (error) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:[NSString stringWithFormat:@"Error %@", [error description]] delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
        [alert show];
        [self dismissModalViewControllerAnimated:YES];
    }
    [self dismissModalViewControllerAnimated:YES];
    
}


////Don't Touch
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)EmailIt:(id)sender {
}
- (IBAction)submitButton:(id)sender {
}
@end


