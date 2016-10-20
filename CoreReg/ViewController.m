//
//  ViewController.m
//  CoreReg
//
//  Created by 冯成林 on 15/7/22.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import "ViewController.h"
#import "NSString+RegExtend.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *str = @"fffdsfdsa fdslkjrewrlwjlfdsjalfuo[em_haha]jfdsalfjslf[em_kaixin]gfdhglr[em_bazimei]fdsljfler";
    
    NSArray *arr = [str splitToRegItemModelsBy:@"\\[\\w+\\]"];
    
    [arr enumerateObjectsUsingBlock:^(CoreRegItemModel *rim, NSUInteger idx, BOOL * _Nonnull stop) {
        
        NSLog(@"%@:%@",rim.str, NSStringFromRange(rim.range));
        
    }];
    
}

@end
