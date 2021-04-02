//
//  Client.m
//  MediatorPatternDemo
//
//  Created by allin597 on 2019/7/16.
//  Copyright © 2019 allin597. All rights reserved.
//

#import "Client.h"

@implementation Client

- (void)entrustMediator:(Mediator *)mediator {
    
    self.mediator = mediator;
}

@end
