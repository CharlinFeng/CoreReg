//
//  NSString+RegExtend.m
//  Carpenter
//
//  Created by 冯成林 on 15/5/18.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import "NSString+RegExtend.h"


@implementation NSString (RegExtend)


/**  是否是手机号 */
-(BOOL)isMobileNO{
    return [self isMatch:RX(@"^((13[0-9])|(17[0-9])|(147)|(15[^4,\\D])|(18[0-9]))\\d{8}$")];
}

-(NSArray <NSString *>*)splitBy:(NSString *)rx{

    return [self split:RX(rx)];
}

-(NSArray <RxMatch *>*)matchBy:(NSString *)rx {

    return [self matchesWithDetails:RX(rx)];
}


-(NSArray <CoreRegItemModel *>*)splitToRegItemModelsBy:(NSString *)rx{

    NSArray *arr_normalString =[self splitBy:rx];

    NSMutableArray <CoreRegItemModel *>*arrM = [NSMutableArray array];
    
    [arr_normalString enumerateObjectsUsingBlock:^(NSString *each, NSUInteger idx, BOOL * _Nonnull stop) {
        
        CoreRegItemModel *rim = [CoreRegItemModel new];
        rim.str = each;
        rim.range = [self rangeOfString:each];
        [arrM addObject:rim];
    }];
    
    NSArray *arr_rx = [self matchBy:rx];
    [arr_rx enumerateObjectsUsingBlock:^(RxMatch  *rm, NSUInteger idx, BOOL * _Nonnull stop) {
        
        CoreRegItemModel *rim = [CoreRegItemModel new];
        rim.str = rm.value;
        rim.range = rm.range;
        [arrM addObject:rim];
    }];
    
    [arrM sortUsingComparator:^NSComparisonResult(CoreRegItemModel *rim1, CoreRegItemModel *rim2) {
        return rim1.range.location > rim2.range.location;
    }];
    
    return arrM;
}

@end
