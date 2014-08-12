//
//  ViewController.h
//  Cells
//
//  Created by John Christiansen on 8/4/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>
#import <MessageUI/MFMailComposeViewController.h>
#import "KLHorizontalSelect.h"

@interface ViewController : UIViewController
<UITableViewDataSource, UITableViewDelegate, MFMailComposeViewControllerDelegate, UIGestureRecognizerDelegate>
{
    IBOutlet UIScrollView *Scroller;
}

-(IBAction)openEmail;


//@property (strong, nonatomic) IBOutlet UILabel *lblSwipe;
//
//-(void)screenWasSwiped;


@end
