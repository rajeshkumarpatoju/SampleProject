//
//  EventsView.h
//  SampleProject
//
//  Created by Inwiter Inc on 3/19/16.
//  Copyright © 2016 VSK. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EventCell.h"
#import "EventCellDelegate.h"
//we will implement this delegate method in this class.

@interface EventsView : UITableViewController<EventCellDelegate>

@end
