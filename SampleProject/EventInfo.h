//
//  EventInfo.h
//  SampleProject
//
//  Created by Inwiter Inc on 3/21/16.
//  Copyright © 2016 VSK. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EventInfo : NSObject

@property(nonatomic,strong) NSString *EventTitle;
@property(nonatomic,strong) NSString *EventDate;
@property(nonatomic,strong) NSString *titleViewed;
@property(nonatomic,strong) NSString *viewCount;
@property(nonatomic,strong) NSString *titleComing;
@property(nonatomic,strong) NSString *attendingPeopleCount;
@property(nonatomic,strong) NSString *titleMayattend;
@property(nonatomic,strong) NSString *MayattendCount;
@property(nonatomic,strong) NSString *titleNo;

@property(nonatomic,strong) NSString *noCount;

@property(nonatomic,strong) NSString *videoUrl;
@property(nonatomic,strong) NSURL *videoThumbnailUrl;
@end
