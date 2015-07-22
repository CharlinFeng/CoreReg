//
//  NSString+RegExtend.m
//  Carpenter
//
//  Created by 冯成林 on 15/5/18.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import "NSString+RegExtend.h"
#import "RegExCategories.h"


@implementation NSString (RegExtend)


/**  是否是手机号 */
-(BOOL)isMobileNO{
    return [self isMatch:RX(@"^((13[0-9])|(147)|(15[^4,\\D])|(18[0,5-9]))\\d{8}$")];
}




@end
