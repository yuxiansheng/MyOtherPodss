//
//  Mediator.h
//  MediatorPatternDemo
//
//  Created by allin597 on 2019/7/16.
//  Copyright © 2019 allin597. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Client.h"


@class Client;
NS_ASSUME_NONNULL_BEGIN

@interface Mediator : NSObject


@property (nonatomic, strong) NSString * name;

- (void)saveClient:(Client *)client;

@end

NS_ASSUME_NONNULL_END
