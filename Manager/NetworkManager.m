//
//  NetworkManager.m
//  Singleton
//
//  Created by xiaojia.xiao on 2019/7/16.
//  Copyright © 2019 xiaojia.xiao. All rights reserved.
//

#import "NetworkManager.h"

@interface NetworkManager ()<NSCopying,NSMutableCopying>

@end

static NetworkManager *_instance;

@implementation NetworkManager

- (instancetype)init{
    if (!self) {
        self = [super init];
    }
    return self;
}

+ (void)initialize{
    
    [super initialize];
    
}

+ (instancetype)sharemManager{
    if (!_instance) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            _instance = [[super allocWithZone:NULL] init];
        });
        
    }
    return _instance;
}


+ (instancetype)allocWithZone:(struct _NSZone *)zone{
    
    return [[self class] sharemManager];
}



//- (id)copyWithZone:(NSZone *)zone{
//
//    return [super copyWithZone:zone];
//
//}

//-(id)copy{
//    NSLog(@"%s",__func__);
//    return [super copy];
//}

//-(id)mutableCopy{
//    NSLog(@"%s",__func__);
//    return [super mutableCopy];
//}

//- (id)mutableCopyWithZone:(NSZone *)zone{
//    return [super mutableCopyWithZone:zone];
//}

@end
