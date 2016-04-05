//
//  EventsView.m
//  SampleProject
//
//  Created by Inwiter Inc on 3/19/16.
//  Copyright © 2016 VSK. All rights reserved.
//

#import "EventsView.h"
#import "EventInfo.h"
#import "EventCell.h"
#import "EventCellDelegate.h"

@implementation EventsView

NSArray *eventObjectArray;

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    EventInfo *eventInfo1 = [[EventInfo alloc] init];
    EventInfo *eventInfo2 = [[EventInfo alloc] init];
    EventInfo *eventInfo3 = [[EventInfo alloc] init];
    
    eventObjectArray = [NSArray arrayWithObjects:eventInfo1,eventInfo2,eventInfo3, nil];
    
    eventInfo1.EventTitle = @"Venni's B'day";
    eventInfo1.EventDate = @"23-jun-2016 6:30pm";
    eventInfo1.titleViewed = @"Viewed";
    eventInfo1.viewCount = @"23";
    eventInfo1.titleComing = @"Coming";
    eventInfo1.attendingPeopleCount = @"20";
    eventInfo1.titleMayattend = @"MayBe";
    eventInfo1.MayattendCount = @"2";
    eventInfo1.titleNo = @"NO";
    eventInfo1.noCount = @"1";
    
    eventInfo1.videoThumbnailUrl = [NSURL URLWithString: @"http://media2.popsugar-assets.com/files/2014/01/22/957/n/1922664/1732c1be5fba6105_First_Birthday.jpg.xxxlarge/i/Creative-First-Birthday-Party-Ideas.jpg"];
//    eventInfo1.videoUrl = @"videourl";
//    Data For Object 2
    eventInfo2.EventTitle = @"Bharath Marrige";
    eventInfo2.EventDate = @"28-mar-2016 12:30 am";
    eventInfo2.titleViewed = @"Viewed";
    eventInfo2.viewCount = @"400";
    eventInfo2.titleComing = @"Coming";
    eventInfo2.attendingPeopleCount =@"350";
    eventInfo2.titleMayattend = @"mayBe";
    eventInfo2.MayattendCount = @"30";
    eventInfo2.titleNo = @"NO";
    eventInfo2.noCount = @"20";
    eventInfo2.videoThumbnailUrl = [NSURL URLWithString: @"http://www.returnofkings.com/wp-content/uploads/2014/07/marriagep.jpg"];
//    eventInfo2.videoUrl = @"videourl";
    eventInfo3.EventTitle = @"ChaituEngagement";
    eventInfo3.EventDate = @"10-dec-2016 10:30am";
    eventInfo3.titleViewed = @"Invited";
    eventInfo3.viewCount = @"100";
    eventInfo3.titleComing = @"Comming";
    eventInfo3.attendingPeopleCount = @"90";
    eventInfo3.titleMayattend = @"Maybe";
    eventInfo3.MayattendCount = @"5";
    eventInfo3.titleNo = @"NO";
    eventInfo3.noCount = @"5";
    eventInfo3.videoThumbnailUrl = [NSURL URLWithString:@"https://www.walmartstationery.com/media//gsi-personalize/SAMPLE/500x1200/c/e/5/ce58fbf1cd851b3ed454a3a073edb09c.png"];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [eventObjectArray count];
}
//delegate method

-(void)ShowCommentsAtIndex:(NSInteger)index
{
    NSLog(@"DelegateMethod Called by index: %ld",index);
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"eventcell";
    EventCell *eventCell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
      eventCell.delegate = self;
    
    [eventCell updateView:[eventObjectArray objectAtIndex:indexPath.row]];
    return eventCell;
    
}

@end
