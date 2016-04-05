//
//  EventCell.m
//  SampleProject
//
//  Created by Inwiter Inc on 3/21/16.
//  Copyright © 2016 VSK. All rights reserved.
//

#import "EventCell.h"
#import "EventsView.h"

@implementation EventCell

-(void)awakeFromNib
{
    UITapGestureRecognizer *tapRecogniser = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapResponder:)];
    tapRecogniser.numberOfTapsRequired = 1;
    tapRecogniser.delegate = self;
    [self.commentsView addGestureRecognizer:tapRecogniser];
    
}

//Sybthasise
@synthesize delegate;

-(void)tapResponder: (UITapGestureRecognizer *) sender
{
    NSLog(@"Gesture respond method called.");
    [self.delegate ShowCommentsAtIndex:self.tag];
    
}

-(BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    return YES;
}

-(void)updateView:(EventInfo *)infoObject
{
//    NSLog(@"hi rajesh welcome to objective c");
//    self.uiImage.image = infoObject.videoThumbnailUrl;
    NSData *data = [NSData dataWithContentsOfURL:infoObject.videoThumbnailUrl];
    UIImage *image = [UIImage imageWithData:data];
    
    [self.uiImage setImage:image];
    self.eventTitle.text = infoObject.EventTitle;
    self.eventDate.text = infoObject.EventDate;
    self.viewCount.text = infoObject.viewCount;
    self.comingCount.text = infoObject.attendingPeopleCount;
    self.comingTitle.text = infoObject.titleComing;
    self.viewTitle.text = infoObject.titleViewed;
    self.mayCount.text = infoObject.MayattendCount;
    self.maybeTitle.text = infoObject.titleMayattend;
   
    self.noCount.text = infoObject.noCount;
    self.noTitle.text = infoObject.titleNo;
}

@end
