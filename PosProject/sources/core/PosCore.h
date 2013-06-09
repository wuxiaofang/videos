//
//  PosCore.h
//  PosProject
//
//  Created by xiaofang.wu on 13-5-4.
//  Copyright (c) 2013年 xiaofang.wu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PosUserManager.h"
@interface PosCore : NSObject
@property (nonatomic,readonly,retain)PosUserManager* userManager;
+(PosCore*)sharedInstance;
@end
