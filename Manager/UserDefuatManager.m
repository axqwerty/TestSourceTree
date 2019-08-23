//
//  UserDefuatManager.m
//  Singleton
//
//  Created by xiaojia.xiao on 2019/7/16.
//  Copyright © 2019 xiaojia.xiao. All rights reserved.
//

#import "UserDefuatManager.h"

static UserDefuatManager *_defuatManager;

@interface UserDefuatManager()<NSCopying,NSMutableCopying>

@end

@implementation UserDefuatManager



+ (instancetype)shareManager{
    
    if (!_defuatManager) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            _defuatManager = [[super allocWithZone:NULL] init];
        });
    }
    return _defuatManager;
}



+ (instancetype)allocWithZone:(struct _NSZone *)zone{
    
    return [[self class] shareManager];
}

- (id)copyWithZone:(NSZone *)zone{

    return self;
}

- (id)mutableCopyWithZone:(NSZone *)zone{

    return self;
}

@end
