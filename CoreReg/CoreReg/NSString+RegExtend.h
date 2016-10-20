//
//  NSString+RegExtend.h
//  Carpenter
//
//  Created by 冯成林 on 15/5/18.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RegExCategories.h"
#import "CoreRegItemModel.h"

@interface NSString (RegExtend)

@property (nonatomic,assign,readonly) BOOL isMobileNO;

-(NSArray <NSString *>*)splitBy:(NSString *)rx;
-(NSArray <RxMatch *>*)matchBy:(NSString *)rx;

-(NSArray <CoreRegItemModel *>*)splitToRegItemModelsBy:(NSString *)rx;

@end
