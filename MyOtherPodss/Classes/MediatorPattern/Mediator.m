//
//  Mediator.m
//  MediatorPatternDemo
//
//  Created by allin597 on 2019/7/16.
//  Copyright © 2019 allin597. All rights reserved.
//

#import "Mediator.h"

@interface Mediator ()

@property (nonatomic, strong) NSMutableArray * clientArray;

@end

@implementation Mediator


- (void)saveClient:(Client *)client {
    
    [self.clientArray addObject:client];
}

- (NSMutableArray *)clientArray {
    
    if (!_clientArray) {
        _clientArray = [NSMutableArray new];
    }
    return _clientArray;
}

@end
