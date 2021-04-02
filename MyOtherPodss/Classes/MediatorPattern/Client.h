//
//  Client.h
//  MediatorPatternDemo
//
//  Created by allin597 on 2019/7/16.
//  Copyright © 2019 allin597. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Mediator.h"

@class Mediator;
NS_ASSUME_NONNULL_BEGIN

@interface Client : NSObject

@property (nonatomic, strong) NSString * name;

@property (nonatomic, assign) NSInteger price;

@property (nonatomic, strong) Mediator * mediator;

- (void)entrustMediator:(Mediator *)mediator;

@end

NS_ASSUME_NONNULL_END
