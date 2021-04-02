//
//  OPViewController.m
//  MyOtherPodss
//
//  Created by yuxiansheng on 04/02/2021.
//  Copyright (c) 2021 yuxiansheng. All rights reserved.
//

#import "OPViewController.h"

#import <MyOtherPodss/Mediator.h>
#import <MyOtherPodss/Client.h>
#import <MyOtherPodss/Client_SellerZH.h>
#import <MyOtherPodss/Client_SellerWL.h>
#import <MyOtherPodss/Client_Buyer_WJ.h>


@interface OPViewController ()

@end

@implementation OPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // 创建一个中介者
    Mediator *mediator = [[Mediator alloc]init];
    
    //出现一个seller
    Client_SellerWL *sellwl = [[Client_SellerWL alloc]init];
    sellwl.name = @"WL";
    sellwl.price = 10000000;
    [sellwl entrustMediator:mediator];
    
    [mediator saveClient:sellwl];
    
    Client_SellerZH *sellzh = [[Client_SellerZH alloc]init];
    sellwl.name = @"zh";
    sellwl.price = 15000000;
    [sellzh entrustMediator:mediator];
    
    [mediator saveClient:sellzh];
    
    
    // 买家
    Client_Buyer_WJ *buyerwj = [[Client_Buyer_WJ alloc]init];
    buyerwj.price = 200000000;
    [buyerwj buyHouse];


    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
