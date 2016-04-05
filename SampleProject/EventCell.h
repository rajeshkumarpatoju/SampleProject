//
//  EventCell.h
//  SampleProject
//
//  Created by Inwiter Inc on 3/21/16.
//  Copyright © 2016 VSK. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EventInfo.h"
#import "EventCellDelegate.h"

@interface EventCell : UITableViewCell 
//Id creation for Dlegate.

@property (retain,nonatomic) id <EventCellDelegate> delegate;

//Setting Outlets to the UIelements.
@property (strong, nonatomic) IBOutlet UIImageView *uiImage;

@property (strong, nonatomic) IBOutlet UILabel *eventTitle;

@property (strong, nonatomic) IBOutlet UILabel *eventDate;

@property (strong, nonatomic) IBOutlet UILabel *viewCount;

@property (strong, nonatomic) IBOutlet UILabel *comingCount;

@property (strong, nonatomic) IBOutlet UILabel *comingTitle;

@property (strong, nonatomic) IBOutlet UILabel *viewTitle;

@property (strong, nonatomic) IBOutlet UILabel *mayCount;

@property (strong, nonatomic) IBOutlet UILabel *maybeTitle;

@property (strong, nonatomic) IBOutlet UILabel *noCount;

@property (strong, nonatomic) IBOutlet UILabel *noTitle;

@property (strong, nonatomic) IBOutlet UIView *commentsView;
-(void)updateView:(NSString *)infoObject;

@end
