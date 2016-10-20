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
    
    NSRegularExpression *re = RX(@"\\[\\w+\\]");
    
    NSArray *arr1 = [str split:re];
    
    NSArray *arr2 = [str matches:re];
    
    NSArray *arr3 = [str matchesWithDetails:re];
    
//    NSLog(@"%@,%@,%@",arr1,arr2,arr3);
    
    [arr3 enumerateObjectsUsingBlock:^(RxMatch *obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        NSLog(@"%@:%@",obj.value,NSStringFromRange(obj.range));
    }];
}

@end
